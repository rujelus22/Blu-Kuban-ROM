.class public Lcom/google/api/services/plus/Plus;
.super Lcom/google/api/client/googleapis/services/GoogleClient;
.source "Plus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/plus/Plus$1;,
        Lcom/google/api/services/plus/Plus$Builder;,
        Lcom/google/api/services/plus/Plus$People;,
        Lcom/google/api/services/plus/Plus$Comments;,
        Lcom/google/api/services/plus/Plus$Activities;,
        Lcom/google/api/services/plus/Plus$Circles;
    }
.end annotation


# instance fields
.field public final activities:Lcom/google/api/services/plus/Plus$Activities;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private alt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private applicationName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private basePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private baseServer:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final circles:Lcom/google/api/services/plus/Plus$Circles;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final comments:Lcom/google/api/services/plus/Plus$Comments;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private fields:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private oauthToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public final people:Lcom/google/api/services/plus/Plus$People;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private prettyPrint:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private quotaUser:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private userIp:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "transport"
    .parameter "jsonHttpRequestInitializer"
    .parameter "httpRequestInitializer"
    .parameter "jsonFactory"
    .parameter "baseUrl"
    .parameter "applicationName"

    .prologue
    .line 374
    invoke-direct/range {p0 .. p6}, Lcom/google/api/client/googleapis/services/GoogleClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "https://www.googleapis.com"

    iput-object v0, p0, Lcom/google/api/services/plus/Plus;->baseServer:Ljava/lang/String;

    .line 90
    const-string v0, "/plus/v1whitelisted/"

    iput-object v0, p0, Lcom/google/api/services/plus/Plus;->basePath:Ljava/lang/String;

    .line 498
    new-instance v0, Lcom/google/api/services/plus/Plus$Circles;

    invoke-direct {v0, p0}, Lcom/google/api/services/plus/Plus$Circles;-><init>(Lcom/google/api/services/plus/Plus;)V

    iput-object v0, p0, Lcom/google/api/services/plus/Plus;->circles:Lcom/google/api/services/plus/Plus$Circles;

    .line 647
    new-instance v0, Lcom/google/api/services/plus/Plus$Activities;

    invoke-direct {v0, p0}, Lcom/google/api/services/plus/Plus$Activities;-><init>(Lcom/google/api/services/plus/Plus;)V

    iput-object v0, p0, Lcom/google/api/services/plus/Plus;->activities:Lcom/google/api/services/plus/Plus$Activities;

    .line 1105
    new-instance v0, Lcom/google/api/services/plus/Plus$Comments;

    invoke-direct {v0, p0}, Lcom/google/api/services/plus/Plus$Comments;-><init>(Lcom/google/api/services/plus/Plus;)V

    iput-object v0, p0, Lcom/google/api/services/plus/Plus;->comments:Lcom/google/api/services/plus/Plus$Comments;

    .line 1311
    new-instance v0, Lcom/google/api/services/plus/Plus$People;

    invoke-direct {v0, p0}, Lcom/google/api/services/plus/Plus$People;-><init>(Lcom/google/api/services/plus/Plus;)V

    iput-object v0, p0, Lcom/google/api/services/plus/Plus;->people:Lcom/google/api/services/plus/Plus$People;

    .line 380
    return-void
.end method

.method static synthetic access$400(Lcom/google/api/services/plus/Plus;Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/google/api/services/plus/Plus;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    return-void
.end method

.method public static builder(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/services/plus/Plus$Builder;
    .registers 3
    .parameter "transport"
    .parameter "jsonFactory"

    .prologue
    .line 477
    new-instance v0, Lcom/google/api/services/plus/Plus$Builder;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/plus/Plus$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method


# virtual methods
.method public activities()Lcom/google/api/services/plus/Plus$Activities;
    .registers 2

    .prologue
    .line 639
    new-instance v0, Lcom/google/api/services/plus/Plus$Activities;

    invoke-direct {v0, p0}, Lcom/google/api/services/plus/Plus$Activities;-><init>(Lcom/google/api/services/plus/Plus;)V

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/api/services/plus/Plus;->applicationName:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 405
    invoke-super {p0}, Lcom/google/api/client/googleapis/services/GoogleClient;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/api/services/plus/Plus;->applicationName:Ljava/lang/String;

    goto :goto_8
.end method

.method public getBasePath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/api/services/plus/Plus;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseServer()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/api/services/plus/Plus;->baseServer:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/services/plus/Plus;->getBaseServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/services/plus/Plus;->getBasePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, baseUrl:Ljava/lang/String;
    const-string v1, "https://www.googleapis.com/plus/v1whitelisted/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 421
    invoke-super {p0}, Lcom/google/api/client/googleapis/services/GoogleClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 423
    .end local v0           #baseUrl:Ljava/lang/String;
    :cond_25
    return-object v0
.end method
