.class public final Lcom/google/android/youtube/core/b/z;
.super Lcom/google/android/youtube/core/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/b/al;


# instance fields
.field private final g:Lcom/google/android/youtube/core/async/ar;

.field private final h:Lcom/google/android/youtube/core/async/ar;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v6, 0x240c8400

    const-wide/32 v4, 0x6ddd00

    const/16 v3, 0x14

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/google/android/youtube/core/b/c;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;)V

    .line 45
    new-instance v0, Lcom/google/android/youtube/core/converter/http/da;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/http/da;-><init>()V

    invoke-static {v3}, Lcom/google/android/youtube/core/b/z;->a(I)Lcom/google/android/youtube/core/cache/b;

    move-result-object v1

    invoke-virtual {p0, v0, v0}, Lcom/google/android/youtube/core/b/z;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/bc;)Lcom/google/android/youtube/core/async/ag;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/core/b/z;->d:Ljava/lang/String;

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Lcom/google/android/youtube/core/b/z;->b()Lcom/google/android/youtube/core/cache/d;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v6, v7}, Lcom/google/android/youtube/core/b/z;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    :cond_24
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/b/z;->a(Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v4, v5}, Lcom/google/android/youtube/core/b/z;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/z;->g:Lcom/google/android/youtube/core/async/ar;

    .line 46
    new-instance v0, Lcom/google/android/youtube/core/converter/http/cx;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/z;->f:Lcom/google/android/youtube/core/converter/k;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/cx;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    invoke-static {v3}, Lcom/google/android/youtube/core/b/z;->a(I)Lcom/google/android/youtube/core/cache/b;

    move-result-object v1

    invoke-virtual {p0, v0, v0}, Lcom/google/android/youtube/core/b/z;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/bc;)Lcom/google/android/youtube/core/async/ag;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/core/b/z;->d:Ljava/lang/String;

    if-eqz v2, :cond_49

    invoke-virtual {p0}, Lcom/google/android/youtube/core/b/z;->b()Lcom/google/android/youtube/core/cache/d;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v6, v7}, Lcom/google/android/youtube/core/b/z;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    :cond_49
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/b/z;->a(Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v4, v5}, Lcom/google/android/youtube/core/b/z;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/z;->h:Lcom/google/android/youtube/core/async/ar;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/b/z;->h:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 62
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/b/z;->g:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 67
    return-void
.end method
