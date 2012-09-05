.class public Lcom/google/api/services/pos/Pos$Plusones$Insert;
.super Lcom/google/api/services/pos/PosRequest;
.source "Pos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/Pos$Plusones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Insert"
.end annotation


# instance fields
.field private abtk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "abtk"
    .end annotation
.end field

.field private ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ad"
    .end annotation
.end field

.field private adtk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "adtk"
    .end annotation
.end field

.field private ag:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ag"
    .end annotation
.end field

.field private cdx:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "cdx"
    .end annotation
.end field

.field private container:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "container"
    .end annotation
.end field

.field private content:Lcom/google/api/services/pos/model/Plusones;

.field private cr:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "cr"
    .end annotation
.end field

.field private fake:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "fake"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private imageLanding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "image_landing"
    .end annotation
.end field

.field private imageThumbnail:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "image_thumbnail"
    .end annotation
.end field

.field private imageTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "image_title"
    .end annotation
.end field

.field private profileVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "profileVersion"
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "source"
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/pos/Pos$Plusones;

.field private track:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "track"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;Lcom/google/api/services/pos/model/Plusones;)V
    .registers 7
    .parameter
    .parameter "id"
    .parameter "content"

    .prologue
    .line 832
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Insert;->this$1:Lcom/google/api/services/pos/Pos$Plusones;

    .line 833
    iget-object v0, p1, Lcom/google/api/services/pos/Pos$Plusones;->this$0:Lcom/google/api/services/pos/Pos;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "plusones/{id}"

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/google/api/services/pos/PosRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 834
    const-string v0, "Required parameter id must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/pos/Pos$Plusones$Insert;->id:Ljava/lang/String;

    .line 835
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/pos/model/Plusones;

    iput-object v0, p0, Lcom/google/api/services/pos/Pos$Plusones$Insert;->content:Lcom/google/api/services/pos/model/Plusones;

    .line 836
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;Lcom/google/api/services/pos/model/Plusones;Lcom/google/api/services/pos/Pos$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 825
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/services/pos/Pos$Plusones$Insert;-><init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;Lcom/google/api/services/pos/model/Plusones;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/pos/model/Plusones;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/google/api/services/pos/Pos$Plusones$Insert;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 847
    const-class v0, Lcom/google/api/services/pos/model/Plusones;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/pos/model/Plusones;

    .line 849
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/model/Plusones;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 850
    return-object v0
.end method

.method public setContainer(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Insert;
    .registers 2
    .parameter "container"

    .prologue
    .line 899
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Insert;->container:Ljava/lang/String;

    .line 900
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Insert;
    .registers 2
    .parameter "source"

    .prologue
    .line 995
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Insert;->source:Ljava/lang/String;

    .line 996
    return-object p0
.end method
