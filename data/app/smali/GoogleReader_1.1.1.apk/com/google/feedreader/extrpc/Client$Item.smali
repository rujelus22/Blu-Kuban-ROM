.class public final Lcom/google/feedreader/extrpc/Client$Item;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$ItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$Item$Builder;,
        Lcom/google/feedreader/extrpc/Client$Item$MediaContent;,
        Lcom/google/feedreader/extrpc/Client$Item$MediaContentOrBuilder;,
        Lcom/google/feedreader/extrpc/Client$Item$Annotation;,
        Lcom/google/feedreader/extrpc/Client$Item$AnnotationOrBuilder;,
        Lcom/google/feedreader/extrpc/Client$Item$Origin;,
        Lcom/google/feedreader/extrpc/Client$Item$OriginOrBuilder;,
        Lcom/google/feedreader/extrpc/Client$Item$Category;,
        Lcom/google/feedreader/extrpc/Client$Item$CategoryOrBuilder;
    }
.end annotation


# static fields
.field public static final ANNOTATIONS_FIELD_NUMBER:I = 0xb

.field public static final CATEGORIES_FIELD_NUMBER:I = 0x3

.field public static final CONTENT_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final LINKS_FIELD_NUMBER:I = 0xa

.field public static final MEDIA_FIELD_NUMBER:I = 0xc

.field public static final ORIGIN_FIELD_NUMBER:I = 0x7

.field public static final PUBLISHED_MSEC_FIELD_NUMBER:I = 0x9

.field public static final SUMMARY_FIELD_NUMBER:I = 0x5

.field public static final TIMESTAMP_USEC_FIELD_NUMBER:I = 0xd

.field public static final TITLE_FIELD_NUMBER:I = 0x4

.field public static final UPDATED_MSEC_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$Item;

.field private static final serialVersionUID:J


# instance fields
.field private annotations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$Category;",
            ">;"
        }
    .end annotation
.end field

.field private content_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private links_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Link;",
            ">;"
        }
    .end annotation
.end field

.field private media_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$MediaContent;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

.field private publishedMsec_:J

.field private summary_:Ljava/lang/Object;

.field private timestampUsec_:J

.field private title_:Ljava/lang/Object;

.field private updatedMsec_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6625
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Item;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item;

    .line 6626
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Item;->initFields()V

    .line 6627
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$Item$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3112
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5472
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedIsInitialized:B

    .line 5552
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedSerializedSize:I

    .line 3113
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$Item$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$Item;-><init>(Lcom/google/feedreader/extrpc/Client$Item$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3114
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5472
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedIsInitialized:B

    .line 5552
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedSerializedSize:I

    .line 3114
    return-void
.end method

.method static synthetic access$6902(Lcom/google/feedreader/extrpc/Client$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/google/feedreader/extrpc/Client$Item;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->timestampUsec_:J

    return-wide p1
.end method

.method static synthetic access$7100(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/google/feedreader/extrpc/Client$Item;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/google/feedreader/extrpc/Client$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/google/feedreader/extrpc/Client$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->summary_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7402(Lcom/google/feedreader/extrpc/Client$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->content_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/google/feedreader/extrpc/Client$Item;Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/google/feedreader/extrpc/Client$Item;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->updatedMsec_:J

    return-wide p1
.end method

.method static synthetic access$7702(Lcom/google/feedreader/extrpc/Client$Item;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->publishedMsec_:J

    return-wide p1
.end method

.method static synthetic access$7800(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/google/feedreader/extrpc/Client$Item;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/google/feedreader/extrpc/Client$Item;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8000(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/google/feedreader/extrpc/Client$Item;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/google/feedreader/extrpc/Client$Item;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3107
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    return p1
.end method

.method private getContentBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5354
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->content_:Ljava/lang/Object;

    .line 5355
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 5356
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5358
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->content_:Ljava/lang/Object;

    move-object v2, v0

    .line 5361
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

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item;
    .registers 1

    .prologue
    .line 3118
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5227
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->id_:Ljava/lang/Object;

    .line 5228
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 5229
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5231
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 5234
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

.method private getSummaryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5322
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->summary_:Ljava/lang/Object;

    .line 5323
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 5324
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5326
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->summary_:Ljava/lang/Object;

    move-object v2, v0

    .line 5329
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
    .line 5290
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->title_:Ljava/lang/Object;

    .line 5291
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 5292
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5294
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 5297
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
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 5459
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->id_:Ljava/lang/Object;

    .line 5460
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->timestampUsec_:J

    .line 5461
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    .line 5462
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->title_:Ljava/lang/Object;

    .line 5463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->summary_:Ljava/lang/Object;

    .line 5464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->content_:Ljava/lang/Object;

    .line 5465
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    .line 5466
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->updatedMsec_:J

    .line 5467
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->publishedMsec_:J

    .line 5468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    .line 5469
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    .line 5470
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    .line 5471
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 1

    .prologue
    .line 5684
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6700()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$Item;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5687
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5653
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    .line 5654
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Item$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5655
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v1

    .line 5657
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5664
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    .line 5665
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Item$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5666
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v1

    .line 5668
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5620
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5626
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5674
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5680
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5642
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5648
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5631
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5637
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAnnotations(I)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 3
    .parameter "index"

    .prologue
    .line 5430
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    return-object p0
.end method

.method public getAnnotationsCount()I
    .registers 2

    .prologue
    .line 5427
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAnnotationsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5420
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    return-object v0
.end method

.method public getAnnotationsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$Item$AnnotationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5434
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$AnnotationOrBuilder;

    return-object p0
.end method

.method public getAnnotationsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Item$AnnotationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5424
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    return-object v0
.end method

.method public getCategories(I)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 3
    .parameter "index"

    .prologue
    .line 5262
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Category;

    return-object p0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 5259
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCategoriesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5252
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public getCategoriesOrBuilder(I)Lcom/google/feedreader/extrpc/Client$Item$CategoryOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5266
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$CategoryOrBuilder;

    return-object p0
.end method

.method public getCategoriesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Item$CategoryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5256
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 6

    .prologue
    .line 5340
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item;->content_:Ljava/lang/Object;

    .line 5341
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 5342
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5350
    :goto_9
    return-object v4

    .line 5344
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5346
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5347
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 5348
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->content_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 5350
    goto :goto_9
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item;
    .registers 2

    .prologue
    .line 3122
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3107
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 5213
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item;->id_:Ljava/lang/Object;

    .line 5214
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 5215
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5223
    :goto_9
    return-object v4

    .line 5217
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5219
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5220
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 5221
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 5223
    goto :goto_9
.end method

.method public getLinks(I)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3
    .parameter "index"

    .prologue
    .line 5409
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link;

    return-object p0
.end method

.method public getLinksCount()I
    .registers 2

    .prologue
    .line 5406
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLinksList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5399
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    return-object v0
.end method

.method public getLinksOrBuilder(I)Lcom/google/feedreader/extrpc/Client$LinkOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5413
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$LinkOrBuilder;

    return-object p0
.end method

.method public getLinksOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$LinkOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5403
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    return-object v0
.end method

.method public getMedia(I)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 3
    .parameter "index"

    .prologue
    .line 5451
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    return-object p0
.end method

.method public getMediaCount()I
    .registers 2

    .prologue
    .line 5448
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMediaList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$MediaContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5441
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    return-object v0
.end method

.method public getMediaOrBuilder(I)Lcom/google/feedreader/extrpc/Client$Item$MediaContentOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5455
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContentOrBuilder;

    return-object p0
.end method

.method public getMediaOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Item$MediaContentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5445
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    return-object v0
.end method

.method public getOrigin()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 2

    .prologue
    .line 5372
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    return-object v0
.end method

.method public getPublishedMsec()J
    .registers 3

    .prologue
    .line 5392
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->publishedMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 5554
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedSerializedSize:I

    .line 5555
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_b

    move v2, v1

    .line 5607
    .end local v1           #size:I
    .local v2, size:I
    :goto_a
    return v2

    .line 5557
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_b
    const/4 v1, 0x0

    .line 5558
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1b

    .line 5559
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5562
    :cond_1b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_35

    .line 5563
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5562
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 5566
    :cond_35
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v5, :cond_44

    .line 5567
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5570
    :cond_44
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v6, :cond_54

    .line 5571
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getSummaryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5574
    :cond_54
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_66

    .line 5575
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5578
    :cond_66
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_76

    .line 5579
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Item;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5582
    :cond_76
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_85

    .line 5583
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->updatedMsec_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 5586
    :cond_85
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_96

    .line 5587
    const/16 v3, 0x9

    iget-wide v4, p0, Lcom/google/feedreader/extrpc/Client$Item;->publishedMsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 5590
    :cond_96
    const/4 v0, 0x0

    :goto_97
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b1

    .line 5591
    const/16 v4, 0xa

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5590
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    .line 5594
    :cond_b1
    const/4 v0, 0x0

    :goto_b2
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_cc

    .line 5595
    const/16 v4, 0xb

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5594
    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    .line 5598
    :cond_cc
    const/4 v0, 0x0

    :goto_cd
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e7

    .line 5599
    const/16 v4, 0xc

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5598
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    .line 5602
    :cond_e7
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f7

    .line 5603
    const/16 v3, 0xd

    iget-wide v4, p0, Lcom/google/feedreader/extrpc/Client$Item;->timestampUsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 5606
    :cond_f7
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedSerializedSize:I

    move v2, v1

    .line 5607
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_a
.end method

.method public getSummary()Ljava/lang/String;
    .registers 6

    .prologue
    .line 5308
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item;->summary_:Ljava/lang/Object;

    .line 5309
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 5310
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5318
    :goto_9
    return-object v4

    .line 5312
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5314
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5315
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 5316
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->summary_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 5318
    goto :goto_9
.end method

.method public getTimestampUsec()J
    .registers 3

    .prologue
    .line 5245
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->timestampUsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 5276
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item;->title_:Ljava/lang/Object;

    .line 5277
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 5278
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5286
    :goto_9
    return-object v4

    .line 5280
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5282
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5283
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 5284
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 5286
    goto :goto_9
.end method

.method public getUpdatedMsec()J
    .registers 3

    .prologue
    .line 5382
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->updatedMsec_:J

    return-wide v0
.end method

.method public hasContent()Z
    .registers 3

    .prologue
    .line 5337
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5210
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasOrigin()Z
    .registers 3

    .prologue
    .line 5369
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

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

.method public hasPublishedMsec()Z
    .registers 3

    .prologue
    .line 5389
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSummary()Z
    .registers 3

    .prologue
    .line 5305
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

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

.method public hasTimestampUsec()Z
    .registers 3

    .prologue
    .line 5242
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 5273
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

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

.method public hasUpdatedMsec()Z
    .registers 3

    .prologue
    .line 5379
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5474
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedIsInitialized:B

    .line 5475
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 5508
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 5475
    goto :goto_a

    .line 5477
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item;->hasId()Z

    move-result v2

    if-nez v2, :cond_17

    .line 5478
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedIsInitialized:B

    move v2, v3

    .line 5479
    goto :goto_a

    .line 5481
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item;->hasOrigin()Z

    move-result v2

    if-nez v2, :cond_21

    .line 5482
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedIsInitialized:B

    move v2, v3

    .line 5483
    goto :goto_a

    .line 5485
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getOrigin()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 5486
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedIsInitialized:B

    move v2, v3

    .line 5487
    goto :goto_a

    .line 5489
    :cond_2f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getLinksCount()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 5490
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item;->getLinks(I)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Link;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_44

    .line 5491
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedIsInitialized:B

    move v2, v3

    .line 5492
    goto :goto_a

    .line 5489
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 5495
    :cond_47
    const/4 v0, 0x0

    :goto_48
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getAnnotationsCount()I

    move-result v2

    if-ge v0, v2, :cond_5f

    .line 5496
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item;->getAnnotations(I)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 5497
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedIsInitialized:B

    move v2, v3

    .line 5498
    goto :goto_a

    .line 5495
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 5501
    :cond_5f
    const/4 v0, 0x0

    :goto_60
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getMediaCount()I

    move-result v2

    if-ge v0, v2, :cond_77

    .line 5502
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item;->getMedia(I)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_74

    .line 5503
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedIsInitialized:B

    move v2, v3

    .line 5504
    goto :goto_a

    .line 5501
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 5507
    :cond_77
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$Item;->memoizedIsInitialized:B

    move v2, v4

    .line 5508
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 5685
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3107
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 5689
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder(Lcom/google/feedreader/extrpc/Client$Item;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3107
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item;->toBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

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
    .line 5614
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5513
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getSerializedSize()I

    .line 5514
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 5515
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_15
    move v1, v3

    .line 5517
    :goto_16
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 5518
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5517
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 5520
    :cond_2e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_3b

    .line 5521
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5523
    :cond_3b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_49

    .line 5524
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getSummaryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5526
    :cond_49
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_59

    .line 5527
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5529
    :cond_59
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_67

    .line 5530
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5532
    :cond_67
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_74

    .line 5533
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->updatedMsec_:J

    invoke-virtual {p1, v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5535
    :cond_74
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_83

    .line 5536
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->publishedMsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_83
    move v1, v3

    .line 5538
    :goto_84
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9d

    .line 5539
    const/16 v2, 0xa

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5538
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_84

    :cond_9d
    move v1, v3

    .line 5541
    :goto_9e
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b7

    .line 5542
    const/16 v2, 0xb

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5541
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9e

    :cond_b7
    move v1, v3

    .line 5544
    :goto_b8
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d1

    .line 5545
    const/16 v2, 0xc

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5544
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b8

    .line 5547
    :cond_d1
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_df

    .line 5548
    const/16 v0, 0xd

    iget-wide v1, p0, Lcom/google/feedreader/extrpc/Client$Item;->timestampUsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5550
    :cond_df
    return-void
.end method
