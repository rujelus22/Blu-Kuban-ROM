.class public final Lcom/google/android/youtube/core/client/z;
.super Lcom/google/android/youtube/core/client/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/client/ah;


# instance fields
.field private final g:Lcom/google/android/youtube/core/async/ad;

.field private final h:Lcom/google/android/youtube/core/async/ad;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v5, 0x240c8400

    const-wide/32 v3, 0x6ddd00

    const/16 v2, 0x14

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/google/android/youtube/core/client/d;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;)V

    .line 45
    new-instance v0, Lcom/google/android/youtube/core/converter/http/cf;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/http/cf;-><init>()V

    invoke-virtual {p0, v0, v0}, Lcom/google/android/youtube/core/client/z;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/ao;)Lcom/google/android/youtube/core/async/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/client/z;->b()Lcom/google/android/youtube/core/cache/e;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v5, v6}, Lcom/google/android/youtube/core/client/z;->a(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;J)Lcom/google/android/youtube/core/async/am;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/client/z;->a(Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/b;

    move-result-object v0

    invoke-static {v2}, Lcom/google/android/youtube/core/client/z;->a(I)Lcom/google/android/youtube/core/cache/c;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/google/android/youtube/core/client/z;->a(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;J)Lcom/google/android/youtube/core/async/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/z;->g:Lcom/google/android/youtube/core/async/ad;

    .line 46
    new-instance v0, Lcom/google/android/youtube/core/converter/http/cc;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/z;->f:Lcom/google/android/youtube/core/converter/k;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/cc;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    invoke-virtual {p0, v0, v0}, Lcom/google/android/youtube/core/client/z;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/ao;)Lcom/google/android/youtube/core/async/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/client/z;->b()Lcom/google/android/youtube/core/cache/e;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v5, v6}, Lcom/google/android/youtube/core/client/z;->a(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;J)Lcom/google/android/youtube/core/async/am;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/client/z;->a(Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/b;

    move-result-object v0

    invoke-static {v2}, Lcom/google/android/youtube/core/client/z;->a(I)Lcom/google/android/youtube/core/cache/c;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/google/android/youtube/core/client/z;->a(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;J)Lcom/google/android/youtube/core/async/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/z;->h:Lcom/google/android/youtube/core/async/ad;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/core/client/z;->h:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 52
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/client/z;->g:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 57
    return-void
.end method
