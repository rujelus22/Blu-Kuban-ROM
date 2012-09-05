.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonPages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;


# instance fields
.field private availablePid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentEncrypted_:Z

.field private content_:Lcom/google/protobuf/ByteString;

.field private currentPosition_:Ljava/lang/String;

.field private debug_:Ljava/lang/String;

.field private hasContent:Z

.field private hasContentEncrypted:Z

.field private hasCurrentPosition:Z

.field private hasDebug:Z

.field private hasOfflineLicenseInfo:Z

.field private hasPrefix:Z

.field private hasReasonContentBlocked:Z

.field private hasStyle:Z

.field private hasVolumeVersion:Z

.field private memoizedSerializedSize:I

.field private offlineLicenseInfo_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

.field private page_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;",
            ">;"
        }
    .end annotation
.end field

.field private prefix_:Ljava/lang/String;

.field private reasonContentBlocked_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

.field private resourceUrl_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resource_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private style_:Ljava/lang/String;

.field private volumeVersion_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5629
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    .line 5630
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 5631
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->initFields()V

    .line 5632
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4674
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;

    .line 4703
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->prefix_:Ljava/lang/String;

    .line 4710
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->debug_:Ljava/lang/String;

    .line 4717
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->content_:Lcom/google/protobuf/ByteString;

    .line 4724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->volumeVersion_:Ljava/lang/String;

    .line 4731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->contentEncrypted_:Z

    .line 4752
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->style_:Ljava/lang/String;

    .line 4758
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;

    .line 4770
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;

    .line 4783
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->currentPosition_:Ljava/lang/String;

    .line 4789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;

    .line 4857
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->memoizedSerializedSize:I

    .line 4675
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->initFields()V

    .line 4676
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4671
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    .line 4677
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;

    .line 4703
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->prefix_:Ljava/lang/String;

    .line 4710
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->debug_:Ljava/lang/String;

    .line 4717
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->content_:Lcom/google/protobuf/ByteString;

    .line 4724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->volumeVersion_:Ljava/lang/String;

    .line 4731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->contentEncrypted_:Z

    .line 4752
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->style_:Ljava/lang/String;

    .line 4758
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;

    .line 4770
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;

    .line 4783
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->currentPosition_:Ljava/lang/String;

    .line 4789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;

    .line 4857
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->memoizedSerializedSize:I

    .line 4677
    return-void
.end method

.method static synthetic access$12500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4671
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4671
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4671
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4671
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasPrefix:Z

    return p1
.end method

.method static synthetic access$13002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->prefix_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasDebug:Z

    return p1
.end method

.method static synthetic access$13202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->debug_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContent:Z

    return p1
.end method

.method static synthetic access$13402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->content_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$13502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasVolumeVersion:Z

    return p1
.end method

.method static synthetic access$13602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->volumeVersion_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContentEncrypted:Z

    return p1
.end method

.method static synthetic access$13802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->contentEncrypted_:Z

    return p1
.end method

.method static synthetic access$13902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasReasonContentBlocked:Z

    return p1
.end method

.method static synthetic access$14000(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4671
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->reasonContentBlocked_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    return-object v0
.end method

.method static synthetic access$14002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->reasonContentBlocked_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    return-object p1
.end method

.method static synthetic access$14102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasOfflineLicenseInfo:Z

    return p1
.end method

.method static synthetic access$14200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4671
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->offlineLicenseInfo_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    return-object v0
.end method

.method static synthetic access$14202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->offlineLicenseInfo_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    return-object p1
.end method

.method static synthetic access$14302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasStyle:Z

    return p1
.end method

.method static synthetic access$14402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->style_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasCurrentPosition:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4671
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->currentPosition_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;
    .registers 1

    .prologue
    .line 4681
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 4800
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->reasonContentBlocked_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    .line 4801
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->offlineLicenseInfo_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    .line 4802
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    .registers 1

    .prologue
    .line 4996
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->access$12300()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4954
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;

    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->buildParsed()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;->access$12200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages$Builder;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAvailablePidList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4792
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->availablePid_:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 4719
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->content_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContentEncrypted()Z
    .registers 2

    .prologue
    .line 4733
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->contentEncrypted_:Z

    return v0
.end method

.method public getCurrentPosition()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4785
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->currentPosition_:Ljava/lang/String;

    return-object v0
.end method

.method public getDebug()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4712
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->debug_:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineLicenseInfo()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    .registers 2

    .prologue
    .line 4747
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->offlineLicenseInfo_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    return-object v0
.end method

.method public getPageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4693
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->page_:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4705
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->prefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonContentBlocked()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    .registers 2

    .prologue
    .line 4740
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->reasonContentBlocked_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    return-object v0
.end method

.method public getResourceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4773
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resource_:Ljava/util/List;

    return-object v0
.end method

.method public getResourceUrlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4761
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->resourceUrl_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 4859
    iget v3, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->memoizedSerializedSize:I

    .line 4860
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    move v4, v3

    .line 4926
    .end local v3           #size:I
    .local v4, size:I
    :goto_6
    return v4

    .line 4862
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_7
    const/4 v3, 0x0

    .line 4863
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getPageList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    .line 4864
    .local v1, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_10

    .line 4867
    .end local v1           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
    :cond_23
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasDebug()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 4868
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getDebug()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 4871
    :cond_33
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasPrefix()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 4872
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 4875
    :cond_43
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 4876
    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v3, v5

    .line 4879
    :cond_53
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasCurrentPosition()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 4880
    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getCurrentPosition()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 4884
    :cond_63
    const/4 v0, 0x0

    .line 4885
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getAvailablePidList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4886
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_6c

    .line 4889
    .end local v1           #element:Ljava/lang/String;
    :cond_7e
    add-int/2addr v3, v0

    .line 4890
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getAvailablePidList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 4892
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasStyle()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 4893
    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 4897
    :cond_9a
    const/4 v0, 0x0

    .line 4898
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getResourceUrlList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4899
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_a3

    .line 4902
    .end local v1           #element:Ljava/lang/String;
    :cond_b5
    add-int/2addr v3, v0

    .line 4903
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getResourceUrlList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 4905
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContentEncrypted()Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 4906
    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getContentEncrypted()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v3, v5

    .line 4909
    :cond_d2
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasReasonContentBlocked()Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 4910
    const/16 v5, 0xa

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getReasonContentBlocked()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 4913
    :cond_e3
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getResourceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_eb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ff

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    .line 4914
    .local v1, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    const/16 v5, 0xb

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_eb

    .line 4917
    .end local v1           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    :cond_ff
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasVolumeVersion()Z

    move-result v5

    if-eqz v5, :cond_110

    .line 4918
    const/16 v5, 0xc

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getVolumeVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 4921
    :cond_110
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasOfflineLicenseInfo()Z

    move-result v5

    if-eqz v5, :cond_121

    .line 4922
    const/16 v5, 0xd

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getOfflineLicenseInfo()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 4925
    :cond_121
    iput v3, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->memoizedSerializedSize:I

    move v4, v3

    .line 4926
    .end local v3           #size:I
    .restart local v4       #size:I
    goto/16 :goto_6
.end method

.method public getStyle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4754
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->style_:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4726
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->volumeVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasContent()Z
    .registers 2

    .prologue
    .line 4718
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContent:Z

    return v0
.end method

.method public hasContentEncrypted()Z
    .registers 2

    .prologue
    .line 4732
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContentEncrypted:Z

    return v0
.end method

.method public hasCurrentPosition()Z
    .registers 2

    .prologue
    .line 4784
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasCurrentPosition:Z

    return v0
.end method

.method public hasDebug()Z
    .registers 2

    .prologue
    .line 4711
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasDebug:Z

    return v0
.end method

.method public hasOfflineLicenseInfo()Z
    .registers 2

    .prologue
    .line 4746
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasOfflineLicenseInfo:Z

    return v0
.end method

.method public hasPrefix()Z
    .registers 2

    .prologue
    .line 4704
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasPrefix:Z

    return v0
.end method

.method public hasReasonContentBlocked()Z
    .registers 2

    .prologue
    .line 4739
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasReasonContentBlocked:Z

    return v0
.end method

.method public hasStyle()Z
    .registers 2

    .prologue
    .line 4753
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasStyle:Z

    return v0
.end method

.method public hasVolumeVersion()Z
    .registers 2

    .prologue
    .line 4725
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasVolumeVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 4804
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getPageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    .line 4805
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9

    .line 4810
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
    :goto_1b
    return v2

    .line 4807
    :cond_1c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getResourceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    .line 4808
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_1b

    .line 4810
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    :cond_37
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4815
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getSerializedSize()I

    .line 4816
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getPageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    .line 4817
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_b

    .line 4819
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasDebug()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 4820
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getDebug()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4822
    :cond_2a
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasPrefix()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 4823
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4825
    :cond_38
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 4826
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4828
    :cond_46
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasCurrentPosition()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 4829
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getCurrentPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4831
    :cond_54
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getAvailablePidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4832
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_5c

    .line 4834
    .end local v0           #element:Ljava/lang/String;
    :cond_6d
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasStyle()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 4835
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4837
    :cond_7b
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getResourceUrlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4838
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_83

    .line 4840
    .end local v0           #element:Ljava/lang/String;
    :cond_95
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasContentEncrypted()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 4841
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getContentEncrypted()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4843
    :cond_a4
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasReasonContentBlocked()Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 4844
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getReasonContentBlocked()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4846
    :cond_b3
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getResourceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    .line 4847
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_bb

    .line 4849
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    :cond_cd
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasVolumeVersion()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 4850
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getVolumeVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4852
    :cond_dc
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->hasOfflineLicenseInfo()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 4853
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getOfflineLicenseInfo()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4855
    :cond_eb
    return-void
.end method
