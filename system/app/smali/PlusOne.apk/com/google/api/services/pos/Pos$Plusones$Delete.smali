.class public Lcom/google/api/services/pos/Pos$Plusones$Delete;
.super Lcom/google/api/services/pos/PosRequest;
.source "Pos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/Pos$Plusones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Delete"
.end annotation


# instance fields
.field private ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ad"
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


# direct methods
.method private constructor <init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "id"

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Delete;->this$1:Lcom/google/api/services/pos/Pos$Plusones;

    .line 1227
    iget-object v0, p1, Lcom/google/api/services/pos/Pos$Plusones;->this$0:Lcom/google/api/services/pos/Pos;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->DELETE:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "plusones/{id}"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/api/services/pos/PosRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1228
    const-string v0, "Required parameter id must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/pos/Pos$Plusones$Delete;->id:Ljava/lang/String;

    .line 1229
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;Lcom/google/api/services/pos/Pos$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1219
    invoke-direct {p0, p1, p2}, Lcom/google/api/services/pos/Pos$Plusones$Delete;-><init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;)V

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
    .line 1238
    invoke-virtual {p0}, Lcom/google/api/services/pos/Pos$Plusones$Delete;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 1240
    const-class v0, Lcom/google/api/services/pos/model/Plusones;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/pos/model/Plusones;

    .line 1242
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/model/Plusones;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 1243
    return-object v0
.end method

.method public setContainer(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Delete;
    .registers 2
    .parameter "container"

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Delete;->container:Ljava/lang/String;

    .line 1293
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Delete;
    .registers 2
    .parameter "source"

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Delete;->source:Ljava/lang/String;

    .line 1325
    return-object p0
.end method
