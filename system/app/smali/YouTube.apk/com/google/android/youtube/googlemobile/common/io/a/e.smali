.class final Lcom/google/android/youtube/googlemobile/common/io/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/googlemobile/common/io/a/b;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/googlemobile/common/io/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/io/a/e;->a:Lcom/google/android/youtube/googlemobile/common/io/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/googlemobile/common/io/a/b;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/a/e;-><init>(Lcom/google/android/youtube/googlemobile/common/io/a/b;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/e;->a:Lcom/google/android/youtube/googlemobile/common/io/a/b;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/a/b;->a(Lcom/google/android/youtube/googlemobile/common/io/a/b;)Lcom/google/android/youtube/googlemobile/common/io/a/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/a/f;->a(Lcom/google/android/youtube/googlemobile/common/io/a/f;)Z

    move-result v1

    if-eqz v1, :cond_1b

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1b

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, Lcom/google/android/youtube/googlemobile/common/io/a/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/a/f;->a(Lcom/google/android/youtube/googlemobile/common/io/a/f;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
