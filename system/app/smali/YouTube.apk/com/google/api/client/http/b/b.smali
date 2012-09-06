.class final Lcom/google/api/client/http/b/b;
.super Lcom/google/api/client/http/v;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/HttpURLConnection;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 8
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/http/v;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/b/b;->d:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/b/b;->e:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/google/api/client/http/b/b;->a:Ljava/net/HttpURLConnection;

    .line 37
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 38
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    iput v0, p0, Lcom/google/api/client/http/b/b;->b:I

    .line 39
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/b/b;->c:Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lcom/google/api/client/http/b/b;->d:Ljava/util/ArrayList;

    .line 41
    iget-object v3, p0, Lcom/google/api/client/http/b/b;->e:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    if-eqz v1, :cond_33

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_51
    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    if-eqz v0, :cond_51

    .line 47
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 53
    :cond_66
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/client/http/b/b;->a:Ljava/net/HttpURLConnection;

    .line 63
    iget v1, p0, Lcom/google/api/client/http/b/b;->b:I

    invoke-static {v1}, Lcom/google/api/client/http/q;->a(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_e
.end method

.method public final a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/client/http/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/api/client/http/b/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/api/client/http/b/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/api/client/http/b/b;->a:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-nez v0, :cond_d

    const-wide/16 v0, -0x1

    :goto_c
    return-wide v0

    :cond_d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_c
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/client/http/b/b;->a:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/client/http/b/b;->a:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_12

    const-string v1, "HTTP/1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/google/api/client/http/b/b;->b:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/api/client/http/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/client/http/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
