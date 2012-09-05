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
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-class v0, Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/MethodOverride;->override:Ljava/util/EnumSet;

    .line 72
    return-void
.end method

.method private overrideThisMethod(Lcom/google/api/client/http/HttpRequest;)Z
    .registers 7
    .parameter "request"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    iget-object v0, p1, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 100
    .local v0, method:Lcom/google/api/client/http/HttpMethod;
    sget-object v3, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    if-eq v0, v3, :cond_15

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    if-eq v0, v3, :cond_15

    iget-object v3, p0, Lcom/google/api/client/googleapis/MethodOverride;->override:Ljava/util/EnumSet;

    invoke-virtual {v3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 109
    :cond_14
    :goto_14
    return v1

    .line 103
    :cond_15
    sget-object v3, Lcom/google/api/client/googleapis/MethodOverride$1;->$SwitchMap$com$google$api$client$http$HttpMethod:[I

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMethod;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_36

    move v1, v2

    .line 109
    goto :goto_14

    .line 105
    :pswitch_22
    iget-object v3, p1, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpTransport;->supportsPatch()Z

    move-result v3

    if-eqz v3, :cond_14

    move v1, v2

    goto :goto_14

    .line 107
    :pswitch_2c
    iget-object v3, p1, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpTransport;->supportsHead()Z

    move-result v3

    if-eqz v3, :cond_14

    move v1, v2

    goto :goto_14

    .line 103
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 83
    iput-object p0, p1, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 84
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
    .line 87
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/MethodOverride;->overrideThisMethod(Lcom/google/api/client/http/HttpRequest;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 88
    iget-object v0, p1, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 89
    .local v0, method:Lcom/google/api/client/http/HttpMethod;
    sget-object v1, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    iput-object v1, p1, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 90
    iget-object v1, p1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v2, "X-HTTP-Method-Override"

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v1, p1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    if-eqz v1, :cond_27

    iget-object v1, p1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v1}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_30

    .line 93
    :cond_27
    new-instance v1, Lcom/google/api/client/http/ByteArrayContent;

    const-string v2, " "

    invoke-direct {v1, v2}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 96
    .end local v0           #method:Lcom/google/api/client/http/HttpMethod;
    :cond_30
    return-void
.end method
