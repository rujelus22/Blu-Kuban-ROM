.class public abstract Lcom/google/android/youtube/core/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/concurrent/Executor;

.field protected final b:Lorg/apache/http/client/HttpClient;

.field protected final c:Lcom/google/android/youtube/core/utils/d;

.field protected final d:Ljava/lang/String;

.field protected final e:Lcom/google/android/youtube/core/converter/http/dc;

.field protected final f:Lcom/google/android/youtube/core/converter/k;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->a:Ljava/util/concurrent/Executor;

    .line 124
    iput-object v1, p0, Lcom/google/android/youtube/core/b/c;->b:Lorg/apache/http/client/HttpClient;

    .line 125
    iput-object v1, p0, Lcom/google/android/youtube/core/b/c;->e:Lcom/google/android/youtube/core/converter/http/dc;

    .line 126
    iput-object v1, p0, Lcom/google/android/youtube/core/b/c;->f:Lcom/google/android/youtube/core/converter/k;

    .line 127
    const-string v0, "cachePath can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->d:Ljava/lang/String;

    .line 128
    const-string v0, "clock can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->c:Lcom/google/android/youtube/core/utils/d;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/utils/d;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->a:Ljava/util/concurrent/Executor;

    .line 106
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->b:Lorg/apache/http/client/HttpClient;

    .line 107
    const-string v0, "xmlParser cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->f:Lcom/google/android/youtube/core/converter/k;

    .line 108
    const-string v0, "clock cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->c:Lcom/google/android/youtube/core/utils/d;

    .line 109
    new-instance v0, Lcom/google/android/youtube/core/converter/http/dc;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/dc;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->e:Lcom/google/android/youtube/core/converter/http/dc;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->d:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->a:Ljava/util/concurrent/Executor;

    .line 70
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->b:Lorg/apache/http/client/HttpClient;

    .line 71
    const-string v0, "xmlParser can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->f:Lcom/google/android/youtube/core/converter/k;

    .line 72
    const-string v0, "cachePath can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->d:Ljava/lang/String;

    .line 73
    const-string v0, "clock can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->c:Lcom/google/android/youtube/core/utils/d;

    .line 74
    new-instance v0, Lcom/google/android/youtube/core/converter/http/dc;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/dc;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->e:Lcom/google/android/youtube/core/converter/http/dc;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/d;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->a:Ljava/util/concurrent/Executor;

    .line 88
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->b:Lorg/apache/http/client/HttpClient;

    .line 89
    const-string v0, "clock can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->c:Lcom/google/android/youtube/core/utils/d;

    .line 90
    new-instance v0, Lcom/google/android/youtube/core/converter/http/dc;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/dc;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->e:Lcom/google/android/youtube/core/converter/http/dc;

    .line 91
    iput-object v2, p0, Lcom/google/android/youtube/core/b/c;->f:Lcom/google/android/youtube/core/converter/k;

    .line 92
    iput-object v2, p0, Lcom/google/android/youtube/core/b/c;->d:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->a:Ljava/util/concurrent/Executor;

    .line 79
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->b:Lorg/apache/http/client/HttpClient;

    .line 80
    const-string v0, "clock can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->c:Lcom/google/android/youtube/core/utils/d;

    .line 81
    iput-object p3, p0, Lcom/google/android/youtube/core/b/c;->d:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/google/android/youtube/core/converter/http/dc;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/dc;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->e:Lcom/google/android/youtube/core/converter/http/dc;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/c;->f:Lcom/google/android/youtube/core/converter/k;

    .line 84
    return-void
.end method

.method protected static a(Lcom/google/android/youtube/core/utils/o;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/s;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    new-instance v0, Lcom/google/android/youtube/core/async/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/core/async/s;-><init>(Lcom/google/android/youtube/core/utils/o;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;)V

    return-object v0
.end method

.method protected static a(I)Lcom/google/android/youtube/core/cache/b;
    .registers 2
    .parameter

    .prologue
    .line 151
    new-instance v0, Lcom/google/android/youtube/core/cache/b;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/cache/b;-><init>(I)V

    return-object v0
.end method

.method protected static b(I)Lcom/google/android/youtube/core/cache/g;
    .registers 2
    .parameter

    .prologue
    .line 155
    new-instance v0, Lcom/google/android/youtube/core/cache/g;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/cache/g;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/bc;)Lcom/google/android/youtube/core/async/ag;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    new-instance v0, Lcom/google/android/youtube/core/async/ag;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/c;->b:Lorg/apache/http/client/HttpClient;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/ag;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/bc;)V

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/core/b/c;->c:Lcom/google/android/youtube/core/utils/d;

    const-string v1, "this instance does not contain a clock"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/core/b/c;->c:Lcom/google/android/youtube/core/utils/d;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/google/android/youtube/core/async/ay;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/utils/d;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;
    .registers 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/core/b/c;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Lcom/google/android/youtube/core/cache/d;
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/core/b/c;->d:Ljava/lang/String;

    const-string v1, "this instance does not support persistent caching"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/google/android/youtube/core/cache/d;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/c;->d:Ljava/lang/String;

    const-string v2, ".cache"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/cache/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/b/c;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/cache/d;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/d;

    move-result-object v0

    return-object v0
.end method
