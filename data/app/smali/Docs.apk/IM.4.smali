.class public LIM;
.super Ljava/lang/Object;
.source "DefaultAuthenticatedHttpIssuer.java"

# interfaces
.implements LIL;


# annotations
.annotation runtime LanN;
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:LIG;

.field private final a:LJH;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LIM;->a:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LIM;->b:Ljava/util/Map;

    .line 53
    sget-object v0, LIM;->a:Ljava/util/Map;

    const-string v1, "spreadsheets.google.com"

    const-string v2, "wise"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, LIM;->a:Ljava/util/Map;

    const-string v1, "docs.google.com"

    const-string v2, "writely"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, LIM;->a:Ljava/util/Map;

    const-string v1, "jmt0.google.com"

    const-string v2, "wise"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, LIM;->a:Ljava/util/Map;

    const-string v1, "was.sandbox.google.com"

    const-string v2, "wise"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, LIM;->b:Ljava/util/Map;

    const-string v1, "docs.googleusercontent.com"

    const-string v2, "writely"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>(LIG;LJH;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, LIM;->a:LIG;

    .line 74
    iput-object p2, p0, LIM;->a:LJH;

    .line 75
    return-void
.end method

.method private b(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    if-eqz p3, :cond_24

    if-eqz p1, :cond_24

    .line 156
    iget-object v0, p0, LIM;->a:LIG;

    invoke-interface {v0, p1, p3}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_24

    .line 158
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLogin auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_24
    iget-object v0, p0, LIM;->a:LJH;

    invoke-interface {v0, p2}, LJH;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .registers 3
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, LIM;->a:LJH;

    invoke-interface {v0, p1}, LJH;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 82
    sget-object v0, LIM;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    if-nez v0, :cond_36

    .line 85
    sget-object v1, LIM;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 87
    sget-object v0, LIM;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    :cond_36
    invoke-virtual {p0, p1, p2, v0}, LIM;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, LIM;->a:LIG;

    invoke-interface {v0}, LIG;->a()V

    .line 117
    :try_start_5
    invoke-direct {p0, p1, p2, p3}, LIM;->b(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 120
    if-eqz p3, :cond_20

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_20

    .line 121
    iget-object v0, p0, LIM;->a:LIG;

    invoke-interface {v0, p1, p3}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p1, p2, p3}, LIM;->b(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_26

    move-result-object v0

    .line 126
    :cond_20
    iget-object v1, p0, LIM;->a:LIG;

    invoke-interface {v1}, LIG;->b()V

    return-object v0

    :catchall_26
    move-exception v0

    iget-object v1, p0, LIM;->a:LIG;

    invoke-interface {v1}, LIG;->b()V

    throw v0
.end method

.method public a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, LIM;->a:LJH;

    invoke-interface {v0, p1}, LJH;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, LIM;->a:LJH;

    invoke-interface {v0}, LJH;->a()V

    .line 98
    return-void
.end method

.method public a(Lorg/apache/http/HttpRequest;)V
    .registers 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, LIM;->a:LJH;

    invoke-interface {v0, p1}, LJH;->a(Lorg/apache/http/HttpRequest;)V

    .line 138
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, LIM;->a:LJH;

    invoke-interface {v0}, LJH;->b()V

    .line 103
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, LIM;->a:LJH;

    invoke-interface {v0}, LJH;->c()V

    .line 108
    return-void
.end method
