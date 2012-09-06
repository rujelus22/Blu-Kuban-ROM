.class public final Lcom/google/feedreader/extrpc/Client$UserBundle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UserBundleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserBundle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;,
        Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;,
        Lcom/google/feedreader/extrpc/Client$UserBundle$FeedOrBuilder;
    }
.end annotation


# static fields
.field public static final AUTHORNAME_FIELD_NUMBER:I = 0x5

.field public static final AUTHORPHOTOURL_FIELD_NUMBER:I = 0x6

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final FEEDS_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final SUBSCRIBERCOUNT_FIELD_NUMBER:I = 0x7

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundle;

.field private static final serialVersionUID:J


# instance fields
.field private authorName_:Ljava/lang/Object;

.field private authorPhotoUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private feeds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;",
            ">;"
        }
    .end annotation
.end field

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private subscriberCount_:J

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9221
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundle;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$UserBundle;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundle;

    .line 9222
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserBundle;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundle;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->initFields()V

    .line 9223
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7908
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8552
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedIsInitialized:B

    .line 8601
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedSerializedSize:I

    .line 7909
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7903
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle;-><init>(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7910
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8552
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedIsInitialized:B

    .line 8601
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedSerializedSize:I

    .line 7910
    return-void
.end method

.method static synthetic access$10502(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7903
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10602(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7903
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7903
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10800(Lcom/google/feedreader/extrpc/Client$UserBundle;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7903
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10802(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7903
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10902(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7903
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11002(Lcom/google/feedreader/extrpc/Client$UserBundle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7903
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorPhotoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11102(Lcom/google/feedreader/extrpc/Client$UserBundle;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7903
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->subscriberCount_:J

    return-wide p1
.end method

.method static synthetic access$11202(Lcom/google/feedreader/extrpc/Client$UserBundle;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7903
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    return p1
.end method

.method private getAuthorNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8490
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorName_:Ljava/lang/Object;

    .line 8491
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 8492
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8494
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorName_:Ljava/lang/Object;

    move-object v2, v0

    .line 8497
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

.method private getAuthorPhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8522
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorPhotoUrl_:Ljava/lang/Object;

    .line 8523
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 8524
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8526
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorPhotoUrl_:Ljava/lang/Object;

    move-object v2, v0

    .line 8529
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

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 1

    .prologue
    .line 7914
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserBundle;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundle;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8437
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->description_:Ljava/lang/Object;

    .line 8438
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 8439
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8441
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->description_:Ljava/lang/Object;

    move-object v2, v0

    .line 8444
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

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8373
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->id_:Ljava/lang/Object;

    .line 8374
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 8375
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8377
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 8380
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
    .line 8405
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->title_:Ljava/lang/Object;

    .line 8406
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 8407
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8409
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 8412
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
    .registers 3

    .prologue
    .line 8544
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->id_:Ljava/lang/Object;

    .line 8545
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->title_:Ljava/lang/Object;

    .line 8546
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->description_:Ljava/lang/Object;

    .line 8547
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    .line 8548
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorName_:Ljava/lang/Object;

    .line 8549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorPhotoUrl_:Ljava/lang/Object;

    .line 8550
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->subscriberCount_:J

    .line 8551
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 1

    .prologue
    .line 8713
    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10300()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$UserBundle;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8716
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundle;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8682
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    .line 8683
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8684
    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v1

    .line 8686
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8693
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    .line 8694
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8695
    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v1

    .line 8697
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8649
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8655
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8703
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8709
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8671
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8677
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8660
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8666
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->access$10200(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthorName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 8476
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorName_:Ljava/lang/Object;

    .line 8477
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 8478
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 8486
    :goto_9
    return-object v4

    .line 8480
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 8482
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 8483
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 8484
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorName_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 8486
    goto :goto_9
.end method

.method public getAuthorPhotoUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 8508
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorPhotoUrl_:Ljava/lang/Object;

    .line 8509
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 8510
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 8518
    :goto_9
    return-object v4

    .line 8512
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 8514
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 8515
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 8516
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->authorPhotoUrl_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 8518
    goto :goto_9
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 2

    .prologue
    .line 7918
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserBundle;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserBundle;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7903
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 6

    .prologue
    .line 8423
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->description_:Ljava/lang/Object;

    .line 8424
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 8425
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 8433
    :goto_9
    return-object v4

    .line 8427
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 8429
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 8430
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 8431
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->description_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 8433
    goto :goto_9
.end method

.method public getFeeds(I)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 3
    .parameter "index"

    .prologue
    .line 8462
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    return-object p0
.end method

.method public getFeedsCount()I
    .registers 2

    .prologue
    .line 8459
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

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
            "Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8452
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    return-object v0
.end method

.method public getFeedsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$UserBundle$FeedOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 8466
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle$FeedOrBuilder;

    return-object p0
.end method

.method public getFeedsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$UserBundle$FeedOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8456
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 8359
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->id_:Ljava/lang/Object;

    .line 8360
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 8361
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 8369
    :goto_9
    return-object v4

    .line 8363
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 8365
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 8366
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 8367
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 8369
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 8603
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedSerializedSize:I

    .line 8604
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 8636
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 8606
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 8607
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 8608
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 8611
    :cond_1a
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 8612
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 8615
    :cond_29
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_39

    .line 8616
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 8619
    :cond_39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3a
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_52

    .line 8620
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 8619
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 8623
    :cond_52
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_64

    .line 8624
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getAuthorNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 8627
    :cond_64
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_76

    .line 8628
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getAuthorPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 8631
    :cond_76
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_86

    .line 8632
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->subscriberCount_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 8635
    :cond_86
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedSerializedSize:I

    move v2, v1

    .line 8636
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getSubscriberCount()J
    .registers 3

    .prologue
    .line 8540
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->subscriberCount_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 8391
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->title_:Ljava/lang/Object;

    .line 8392
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 8393
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 8401
    :goto_9
    return-object v4

    .line 8395
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 8397
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 8398
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 8399
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 8401
    goto :goto_9
.end method

.method public hasAuthorName()Z
    .registers 3

    .prologue
    .line 8473
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

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

.method public hasAuthorPhotoUrl()Z
    .registers 3

    .prologue
    .line 8505
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

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

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 8420
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 8356
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSubscriberCount()Z
    .registers 3

    .prologue
    .line 8537
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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
    .line 8388
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

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

    .line 8554
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedIsInitialized:B

    .line 8555
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 8572
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 8555
    goto :goto_a

    .line 8557
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->hasId()Z

    move-result v2

    if-nez v2, :cond_17

    .line 8558
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedIsInitialized:B

    move v2, v3

    .line 8559
    goto :goto_a

    .line 8561
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->hasTitle()Z

    move-result v2

    if-nez v2, :cond_21

    .line 8562
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedIsInitialized:B

    move v2, v3

    .line 8563
    goto :goto_a

    .line 8565
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getFeedsCount()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 8566
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getFeeds(I)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_36

    .line 8567
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedIsInitialized:B

    move v2, v3

    .line 8568
    goto :goto_a

    .line 8565
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 8571
    :cond_39
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->memoizedIsInitialized:B

    move v2, v4

    .line 8572
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 2

    .prologue
    .line 8714
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7903
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;
    .registers 2

    .prologue
    .line 8718
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder(Lcom/google/feedreader/extrpc/Client$UserBundle;)Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7903
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->toBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

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
    .line 8643
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

    .line 8577
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getSerializedSize()I

    .line 8578
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 8579
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8581
    :cond_13
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 8582
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8584
    :cond_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 8585
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8587
    :cond_2e
    const/4 v0, 0x0

    move v1, v0

    :goto_30
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 8588
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->feeds_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 8587
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_30

    .line 8590
    :cond_47
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_57

    .line 8591
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getAuthorNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8593
    :cond_57
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_67

    .line 8594
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle;->getAuthorPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8596
    :cond_67
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_75

    .line 8597
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle;->subscriberCount_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 8599
    :cond_75
    return-void
.end method
