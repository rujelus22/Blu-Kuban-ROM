.class public final Lcom/google/feedreader/extrpc/Client$SubscriptionData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$SubscriptionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    }
.end annotation


# static fields
.field public static final CATEGORIES_FIELD_NUMBER:I = 0x3

.field public static final FIRSTITEMMSEC_FIELD_NUMBER:I = 0x5

.field public static final HTMLURL_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final SORTID_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$SubscriptionData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Category;",
            ">;"
        }
    .end annotation
.end field

.field private firstitemmsec_:J

.field private htmlUrl_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sortid_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1268
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    .line 1269
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->initFields()V

    .line 1270
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 475
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 656
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedIsInitialized:B

    .line 702
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedSerializedSize:I

    .line 476
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;-><init>(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 477
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 656
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedIsInitialized:B

    .line 702
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedSerializedSize:I

    .line 477
    return-void
.end method

.method static synthetic access$1002(Lcom/google/feedreader/extrpc/Client$SubscriptionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/feedreader/extrpc/Client$SubscriptionData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/feedreader/extrpc/Client$SubscriptionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->sortid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/feedreader/extrpc/Client$SubscriptionData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->firstitemmsec_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/google/feedreader/extrpc/Client$SubscriptionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->htmlUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/feedreader/extrpc/Client$SubscriptionData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/feedreader/extrpc/Client$SubscriptionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 1

    .prologue
    .line 481
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    return-object v0
.end method

.method private getHtmlUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 637
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->htmlUrl_:Ljava/lang/Object;

    .line 638
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 639
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 641
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->htmlUrl_:Ljava/lang/Object;

    move-object v2, v0

    .line 644
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
    .line 510
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->id_:Ljava/lang/Object;

    .line 511
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 512
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 514
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 517
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
    .line 595
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->sortid_:Ljava/lang/Object;

    .line 596
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 597
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 599
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->sortid_:Ljava/lang/Object;

    move-object v2, v0

    .line 602
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
    .line 542
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->title_:Ljava/lang/Object;

    .line 543
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 544
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 546
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 549
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
    .line 649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->id_:Ljava/lang/Object;

    .line 650
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->title_:Ljava/lang/Object;

    .line 651
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    .line 652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->sortid_:Ljava/lang/Object;

    .line 653
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->firstitemmsec_:J

    .line 654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->htmlUrl_:Ljava/lang/Object;

    .line 655
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 1

    .prologue
    .line 810
    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->create()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$700()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 813
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    .line 780
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 781
    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v1

    .line 783
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    .line 791
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 792
    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v1

    .line 794
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 757
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategories(I)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 3
    .parameter "index"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Category;

    return-object p0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

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
            "Lcom/google/feedreader/extrpc/Client$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public getCategoriesOrBuilder(I)Lcom/google/feedreader/extrpc/Client$CategoryOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$CategoryOrBuilder;

    return-object p0
.end method

.method public getCategoriesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$CategoryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 2

    .prologue
    .line 485
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public getFirstitemmsec()J
    .registers 3

    .prologue
    .line 613
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->firstitemmsec_:J

    return-wide v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 623
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->htmlUrl_:Ljava/lang/Object;

    .line 624
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 625
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 633
    :goto_9
    return-object v4

    .line 627
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 629
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 631
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->htmlUrl_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 633
    goto :goto_9
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 496
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->id_:Ljava/lang/Object;

    .line 497
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 498
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 506
    :goto_9
    return-object v4

    .line 500
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 502
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 504
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 506
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 704
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedSerializedSize:I

    .line 705
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 733
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 707
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 708
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 709
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 712
    :cond_1a
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 713
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 716
    :cond_29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 717
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 720
    :cond_43
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_52

    .line 721
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getSortidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 724
    :cond_52
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_62

    .line 725
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->firstitemmsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 728
    :cond_62
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_74

    .line 729
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getHtmlUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 732
    :cond_74
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedSerializedSize:I

    move v2, v1

    .line 733
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getSortid()Ljava/lang/String;
    .registers 6

    .prologue
    .line 581
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->sortid_:Ljava/lang/Object;

    .line 582
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 583
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 591
    :goto_9
    return-object v4

    .line 585
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 587
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 589
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->sortid_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 591
    goto :goto_9
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 528
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->title_:Ljava/lang/Object;

    .line 529
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 530
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 538
    :goto_9
    return-object v4

    .line 532
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 534
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 536
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 538
    goto :goto_9
.end method

.method public hasFirstitemmsec()Z
    .registers 3

    .prologue
    .line 610
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

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

.method public hasHtmlUrl()Z
    .registers 3

    .prologue
    .line 620
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

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

    .line 493
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSortid()Z
    .registers 3

    .prologue
    .line 578
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 525
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

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

    .line 658
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedIsInitialized:B

    .line 659
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 676
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 659
    goto :goto_a

    .line 661
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->hasId()Z

    move-result v2

    if-nez v2, :cond_17

    .line 662
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedIsInitialized:B

    move v2, v3

    .line 663
    goto :goto_a

    .line 665
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->hasTitle()Z

    move-result v2

    if-nez v2, :cond_21

    .line 666
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedIsInitialized:B

    move v2, v3

    .line 667
    goto :goto_a

    .line 669
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getCategoriesCount()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 670
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getCategories(I)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Category;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_36

    .line 671
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedIsInitialized:B

    move v2, v3

    .line 672
    goto :goto_a

    .line 669
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 675
    :cond_39
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->memoizedIsInitialized:B

    move v2, v4

    .line 676
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 2

    .prologue
    .line 811
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 2

    .prologue
    .line 815
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->toBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

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
    .line 740
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

    .line 681
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getSerializedSize()I

    .line 682
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 683
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 685
    :cond_13
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 686
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 688
    :cond_20
    const/4 v0, 0x0

    move v1, v0

    :goto_22
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 689
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 688
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 691
    :cond_3a
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_47

    .line 692
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getSortidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 694
    :cond_47
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_55

    .line 695
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->firstitemmsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 697
    :cond_55
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_65

    .line 698
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getHtmlUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 700
    :cond_65
    return-void
.end method
