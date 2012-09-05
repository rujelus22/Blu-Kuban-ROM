.class public abstract Lcom/google/android/youtube/core/client/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/concurrent/Executor;

.field protected final b:Lorg/apache/http/client/HttpClient;

.field protected final c:Lcom/google/android/youtube/core/utils/c;

.field protected final d:Ljava/lang/String;

.field protected final e:Lcom/google/android/youtube/core/converter/http/ch;

.field protected final f:Lcom/google/android/youtube/core/converter/k;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->a:Ljava/util/concurrent/Executor;

    .line 122
    iput-object v1, p0, Lcom/google/android/youtube/core/client/d;->b:Lorg/apache/http/client/HttpClient;

    .line 123
    iput-object v1, p0, Lcom/google/android/youtube/core/client/d;->e:Lcom/google/android/youtube/core/converter/http/ch;

    .line 124
    iput-object v1, p0, Lcom/google/android/youtube/core/client/d;->f:Lcom/google/android/youtube/core/converter/k;

    .line 125
    const-string v0, "cachePath can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->d:Ljava/lang/String;

    .line 126
    const-string v0, "clock can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/c;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->c:Lcom/google/android/youtube/core/utils/c;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/utils/c;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->a:Ljava/util/concurrent/Executor;

    .line 104
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->b:Lorg/apache/http/client/HttpClient;

    .line 105
    const-string v0, "xmlParser cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->f:Lcom/google/android/youtube/core/converter/k;

    .line 106
    const-string v0, "clock cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/c;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->c:Lcom/google/android/youtube/core/utils/c;

    .line 107
    new-instance v0, Lcom/google/android/youtube/core/converter/http/ch;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/ch;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->e:Lcom/google/android/youtube/core/converter/http/ch;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->d:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->a:Ljava/util/concurrent/Executor;

    .line 68
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->b:Lorg/apache/http/client/HttpClient;

    .line 69
    const-string v0, "xmlParser can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->f:Lcom/google/android/youtube/core/converter/k;

    .line 70
    const-string v0, "cachePath can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->d:Ljava/lang/String;

    .line 71
    const-string v0, "clock can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/c;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->c:Lcom/google/android/youtube/core/utils/c;

    .line 72
    new-instance v0, Lcom/google/android/youtube/core/converter/http/ch;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/ch;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->e:Lcom/google/android/youtube/core/converter/http/ch;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/c;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->a:Ljava/util/concurrent/Executor;

    .line 86
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->b:Lorg/apache/http/client/HttpClient;

    .line 87
    const-string v0, "clock can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/c;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->c:Lcom/google/android/youtube/core/utils/c;

    .line 88
    new-instance v0, Lcom/google/android/youtube/core/converter/http/ch;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/ch;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->e:Lcom/google/android/youtube/core/converter/http/ch;

    .line 89
    iput-object v2, p0, Lcom/google/android/youtube/core/client/d;->f:Lcom/google/android/youtube/core/converter/k;

    .line 90
    iput-object v2, p0, Lcom/google/android/youtube/core/client/d;->d:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->a:Ljava/util/concurrent/Executor;

    .line 77
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->b:Lorg/apache/http/client/HttpClient;

    .line 78
    const-string v0, "clock can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/c;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->c:Lcom/google/android/youtube/core/utils/c;

    .line 79
    const-string v0, "cachePath can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->d:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/google/android/youtube/core/converter/http/ch;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/ch;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->e:Lcom/google/android/youtube/core/converter/http/ch;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/d;->f:Lcom/google/android/youtube/core/converter/k;

    .line 82
    return-void
.end method

.method protected static a(Lcom/google/android/youtube/core/utils/l;Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/l;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    new-instance v0, Lcom/google/android/youtube/core/async/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/core/async/l;-><init>(Lcom/google/android/youtube/core/utils/l;Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;)V

    return-object v0
.end method

.method protected static a(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/r;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 170
    new-instance v0, Lcom/google/android/youtube/core/async/r;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/r;-><init>(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;)V

    return-object v0
.end method

.method protected static a(I)Lcom/google/android/youtube/core/cache/c;
    .registers 2
    .parameter

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/youtube/core/cache/c;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/cache/c;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;J)Lcom/google/android/youtube/core/async/am;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/core/client/d;->c:Lcom/google/android/youtube/core/utils/c;

    const-string v1, "this instance does not contain a clock"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/core/client/d;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/google/android/youtube/core/async/am;->a(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/utils/c;J)Lcom/google/android/youtube/core/async/am;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/b;
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/core/client/d;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/b;->a(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/b;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/ao;)Lcom/google/android/youtube/core/async/w;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/youtube/core/async/w;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/d;->b:Lorg/apache/http/client/HttpClient;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/w;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/ao;)V

    return-object v0
.end method

.method protected final b()Lcom/google/android/youtube/core/cache/e;
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/core/client/d;->d:Ljava/lang/String;

    const-string v1, "this instance does not support persistent caching"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v0, Lcom/google/android/youtube/core/cache/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/d;->d:Ljava/lang/String;

    const-string v2, ".cache"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/cache/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/client/d;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/cache/e;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/e;

    move-result-object v0

    return-object v0
.end method
