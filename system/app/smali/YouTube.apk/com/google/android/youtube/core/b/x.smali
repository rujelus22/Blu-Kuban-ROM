.class public final Lcom/google/android/youtube/core/b/x;
.super Lcom/google/android/youtube/core/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/b/ai;


# instance fields
.field private final g:Lcom/google/android/youtube/core/c/a;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/youtube/core/cache/a;

.field private final j:Lcom/google/android/youtube/core/async/ar;

.field private final k:Lcom/google/android/youtube/core/async/ar;

.field private final l:Lcom/google/android/youtube/core/async/ar;

.field private final m:Lcom/google/android/youtube/core/async/ar;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/core/c/a;Ljava/lang/String;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v8, 0x5265c00

    const-wide/32 v6, 0x6ddd00

    const/4 v5, 0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/b/c;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;)V

    .line 57
    iput-object p4, p0, Lcom/google/android/youtube/core/b/x;->g:Lcom/google/android/youtube/core/c/a;

    .line 58
    iput-object p5, p0, Lcom/google/android/youtube/core/b/x;->h:Ljava/lang/String;

    .line 60
    const/16 v0, 0x1f4

    invoke-static {v0}, Lcom/google/android/youtube/core/b/x;->a(I)Lcom/google/android/youtube/core/cache/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/x;->i:Lcom/google/android/youtube/core/cache/a;

    .line 62
    new-instance v0, Lcom/google/android/youtube/core/async/ah;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/x;->g:Lcom/google/android/youtube/core/c/a;

    new-instance v2, Lcom/google/android/youtube/core/converter/a/d;

    const-string v3, "g:nsc/mv"

    iget-object v4, p0, Lcom/google/android/youtube/core/b/x;->h:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4}, Lcom/google/android/youtube/core/converter/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/google/android/youtube/core/converter/a/e;

    invoke-direct {v3}, Lcom/google/android/youtube/core/converter/a/e;-><init>()V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/youtube/core/async/ah;-><init>(Lcom/google/android/youtube/core/c/a;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/b;Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/b/x;->j:Lcom/google/android/youtube/core/async/ar;

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/b/x;->j:Lcom/google/android/youtube/core/async/ar;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/x;->i:Lcom/google/android/youtube/core/cache/a;

    new-instance v2, Lcom/google/android/youtube/core/async/as;

    invoke-direct {v2, v0}, Lcom/google/android/youtube/core/async/as;-><init>(Lcom/google/android/youtube/core/async/ar;)V

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/b/x;->a(Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v6, v7}, Lcom/google/android/youtube/core/b/x;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/x;->k:Lcom/google/android/youtube/core/async/ar;

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/b/x;->j:Lcom/google/android/youtube/core/async/ar;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/x;->i:Lcom/google/android/youtube/core/cache/a;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/b/x;->b()Lcom/google/android/youtube/core/cache/d;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v8, v9}, Lcom/google/android/youtube/core/b/x;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/b/x;->a(Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v0

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/google/android/youtube/core/b/x;->a(I)Lcom/google/android/youtube/core/cache/b;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/cache/i;

    new-instance v4, Lcom/google/android/youtube/core/cache/c;

    invoke-direct {v4}, Lcom/google/android/youtube/core/cache/c;-><init>()V

    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/youtube/core/cache/i;-><init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/cache/j;)V

    invoke-virtual {p0, v3, v0, v6, v7}, Lcom/google/android/youtube/core/b/x;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/x;->l:Lcom/google/android/youtube/core/async/ar;

    .line 70
    new-instance v0, Lcom/google/android/youtube/core/async/ah;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/x;->g:Lcom/google/android/youtube/core/c/a;

    new-instance v2, Lcom/google/android/youtube/core/converter/a/a;

    const-string v3, "g:nsc/ma"

    iget-object v4, p0, Lcom/google/android/youtube/core/b/x;->h:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4}, Lcom/google/android/youtube/core/converter/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/google/android/youtube/core/converter/a/b;

    invoke-direct {v3}, Lcom/google/android/youtube/core/converter/a/b;-><init>()V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/youtube/core/async/ah;-><init>(Lcom/google/android/youtube/core/c/a;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/b;Z)V

    iget-object v1, p0, Lcom/google/android/youtube/core/b/x;->i:Lcom/google/android/youtube/core/cache/a;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/b/x;->b()Lcom/google/android/youtube/core/cache/d;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v8, v9}, Lcom/google/android/youtube/core/b/x;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/b/x;->a(Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/core/cache/b;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/cache/b;-><init>(I)V

    new-instance v3, Lcom/google/android/youtube/core/cache/i;

    new-instance v4, Lcom/google/android/youtube/core/b/y;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/youtube/core/b/y;-><init>(B)V

    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/youtube/core/cache/i;-><init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/cache/j;)V

    invoke-virtual {p0, v3, v0, v6, v7}, Lcom/google/android/youtube/core/b/x;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/x;->m:Lcom/google/android/youtube/core/async/ar;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/b/x;->k:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 180
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/b/x;->l:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 185
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/b/x;->m:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 189
    return-void
.end method
