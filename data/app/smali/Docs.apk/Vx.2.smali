.class public LVx;
.super Ljava/lang/Object;
.source "VideoUrlFetcherImpl.java"

# interfaces
.implements LVw;


# static fields
.field private static final a:Landroid/net/Uri;


# instance fields
.field private final a:LIL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "https://docs.google.com/get_video_info?mobile=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, LVx;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(LIL;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, LVx;->a:LIL;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const-string v0, "video/3gpp"

    return-object v0
.end method

.method public a(Lld;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 65
    :try_start_0
    sget-object v0, LVx;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "docid"

    iget-object v2, p1, Lld;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 67
    iget-object v1, p0, LVx;->a:LIL;

    iget-object v2, p1, Lld;->a:Ljava/lang/String;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, LJj;->a(LIL;Ljava/lang/String;Ljava/net/URI;IZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_53

    .line 72
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, LVx;->a(Ljava/lang/String;)Ljava/util/Map;
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_5b

    move-result-object v0

    .line 74
    if-nez v0, :cond_40

    .line 75
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, LVx;->a:LIL;

    invoke-interface {v1}, LIL;->a()V

    .line 83
    iget-object v1, p0, LVx;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    :goto_3f
    return-object v0

    .line 77
    :cond_40
    :try_start_40
    const-string v1, "36"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_5b

    .line 82
    iget-object v1, p0, LVx;->a:LIL;

    invoke-interface {v1}, LIL;->a()V

    .line 83
    iget-object v1, p0, LVx;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    goto :goto_3f

    .line 79
    :cond_53
    :try_start_53
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Response without entity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_5b

    .line 82
    :catchall_5b
    move-exception v0

    iget-object v1, p0, LVx;->a:LIL;

    invoke-interface {v1}, LIL;->a()V

    .line 83
    iget-object v1, p0, LVx;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    throw v0
.end method

.method a(Ljava/lang/String;)Ljava/util/Map;
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 102
    new-instance v0, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v0}, Landroid/net/UrlQuerySanitizer;-><init>()V

    .line 103
    const-string v3, "fmt_stream_map"

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getUrlLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/UrlQuerySanitizer;->registerParameter(Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    .line 105
    const-string v3, "fmt_stream_map"

    invoke-virtual {v0, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    if-eqz v3, :cond_56

    .line 108
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_29
    if-ge v0, v5, :cond_56

    aget-object v6, v4, v0

    .line 109
    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 110
    array-length v8, v7

    if-ne v8, v11, :cond_44

    .line 111
    aget-object v6, v7, v1

    aget-object v7, v7, v10

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 113
    :cond_44
    const-string v7, "VideoUrl"

    const-string v8, "Malformed streamPair %s in %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v6, v9, v1

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 118
    :cond_56
    return-object v2
.end method
