.class public final Lcom/google/api/client/googleapis/MethodOverride;
.super Ljava/lang/Object;
.source "MethodOverride.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/MethodOverride$1;
    }
.end annotation


# instance fields
.field private final override:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-class v0, Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/MethodOverride;->override:Ljava/util/EnumSet;

    .line 63
    return-void
.end method

.method private overrideThisMethod(Lcom/google/api/client/http/HttpRequest;)Z
    .registers 7
    .parameter "request"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getMethod()Lcom/google/api/client/http/HttpMethod;

    move-result-object v0

    .line 93
    .local v0, method:Lcom/google/api/client/http/HttpMethod;
    sget-object v3, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    if-eq v0, v3, :cond_17

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    if-eq v0, v3, :cond_17

    iget-object v3, p0, Lcom/google/api/client/googleapis/MethodOverride;->override:Ljava/util/EnumSet;

    invoke-virtual {v3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 102
    :cond_16
    :goto_16
    return v1

    .line 96
    :cond_17
    sget-object v3, Lcom/google/api/client/googleapis/MethodOverride$1;->$SwitchMap$com$google$api$client$http$HttpMethod:[I

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMethod;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3c

    move v1, v2

    .line 102
    goto :goto_16

    .line 98
    :pswitch_24
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpTransport;->supportsPatch()Z

    move-result v3

    if-eqz v3, :cond_16

    move v1, v2

    goto :goto_16

    .line 100
    :pswitch_30
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpTransport;->supportsHead()Z

    move-result v3

    if-eqz v3, :cond_16

    move v1, v2

    goto :goto_16

    .line 96
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 76
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 77
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .registers 7
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/MethodOverride;->overrideThisMethod(Lcom/google/api/client/http/HttpRequest;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 81
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getMethod()Lcom/google/api/client/http/HttpMethod;

    move-result-object v0

    .line 82
    .local v0, method:Lcom/google/api/client/http/HttpMethod;
    sget-object v1, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/HttpRequest;->setMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/HttpRequest;

    .line 83
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    const-string v2, "X-HTTP-Method-Override"

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3a

    .line 86
    :cond_30
    const/4 v1, 0x0

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/google/api/client/http/ByteArrayContent;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 89
    .end local v0           #method:Lcom/google/api/client/http/HttpMethod;
    :cond_3a
    return-void
.end method
