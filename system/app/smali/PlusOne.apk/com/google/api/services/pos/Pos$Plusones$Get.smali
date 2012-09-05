.class public Lcom/google/api/services/pos/Pos$Plusones$Get;
.super Lcom/google/api/services/pos/PosRequest;
.source "Pos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/Pos$Plusones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Get"
.end annotation


# instance fields
.field private ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ad"
    .end annotation
.end field

.field private container:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "container"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private maxPeople:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "max_people"
    .end annotation
.end field

.field private nolog:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "nolog"
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
    .line 270
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Get;->this$1:Lcom/google/api/services/pos/Pos$Plusones;

    .line 271
    iget-object v0, p1, Lcom/google/api/services/pos/Pos$Plusones;->this$0:Lcom/google/api/services/pos/Pos;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "plusones/{id}"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/api/services/pos/PosRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const-string v0, "Required parameter id must be specified."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/pos/Pos$Plusones$Get;->id:Ljava/lang/String;

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;Lcom/google/api/services/pos/Pos$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/google/api/services/pos/Pos$Plusones$Get;-><init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;)V

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
    .line 282
    invoke-virtual {p0}, Lcom/google/api/services/pos/Pos$Plusones$Get;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 284
    const-class v0, Lcom/google/api/services/pos/model/Plusones;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/pos/model/Plusones;

    .line 286
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/model/Plusones;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 287
    return-object v0
.end method

.method public setContainer(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Get;
    .registers 2
    .parameter "container"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Get;->container:Ljava/lang/String;

    .line 337
    return-object p0
.end method

.method public setMaxPeople(Ljava/lang/Long;)Lcom/google/api/services/pos/Pos$Plusones$Get;
    .registers 2
    .parameter "maxPeople"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Get;->maxPeople:Ljava/lang/Long;

    .line 321
    return-object p0
.end method

.method public setNolog(Ljava/lang/Boolean;)Lcom/google/api/services/pos/Pos$Plusones$Get;
    .registers 2
    .parameter "nolog"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Get;->nolog:Ljava/lang/Boolean;

    .line 369
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Get;
    .registers 2
    .parameter "source"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones$Get;->source:Ljava/lang/String;

    .line 385
    return-object p0
.end method
