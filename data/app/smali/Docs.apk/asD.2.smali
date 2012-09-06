.class LasD;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:LasA;


# direct methods
.method private constructor <init>(LasA;)V
    .registers 2

    iput-object p1, p0, LasD;->a:LasA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LasA;LasB;)V
    .registers 3

    invoke-direct {p0, p1}, LasD;-><init>(LasA;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5

    iget-object v0, p0, LasD;->a:LasA;

    invoke-static {v0}, LasA;->a(LasA;)LasE;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v0}, LasE;->a(LasE;)Z

    move-result v1

    if-eqz v1, :cond_1b

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1b

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, LasA;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LasE;->a(LasE;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
