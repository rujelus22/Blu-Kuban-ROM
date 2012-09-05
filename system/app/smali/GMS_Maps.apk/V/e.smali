.class LV/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:LV/b;


# direct methods
.method private constructor <init>(LV/b;)V
    .registers 2

    iput-object p1, p0, LV/e;->a:LV/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LV/b;LV/c;)V
    .registers 3

    invoke-direct {p0, p1}, LV/e;-><init>(LV/b;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5

    iget-object v0, p0, LV/e;->a:LV/b;

    invoke-static {v0}, LV/b;->a(LV/b;)LV/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v0}, LV/f;->a(LV/f;)Z

    move-result v1

    if-eqz v1, :cond_1b

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1b

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, LV/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LV/f;->a(LV/f;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
