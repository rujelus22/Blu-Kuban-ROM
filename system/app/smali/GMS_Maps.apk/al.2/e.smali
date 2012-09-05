.class Lal/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lal/b;


# direct methods
.method private constructor <init>(Lal/b;)V
    .registers 2

    iput-object p1, p0, Lal/e;->a:Lal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lal/b;Lal/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lal/e;-><init>(Lal/b;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5

    iget-object v0, p0, Lal/e;->a:Lal/b;

    invoke-static {v0}, Lal/b;->a(Lal/b;)Lal/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lal/f;->a(Lal/f;)Z

    move-result v1

    if-eqz v1, :cond_1b

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1b

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, Lal/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lal/f;->a(Lal/f;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
