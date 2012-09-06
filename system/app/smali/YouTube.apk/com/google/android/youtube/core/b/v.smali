.class public final Lcom/google/android/youtube/core/b/v;
.super Lcom/google/android/youtube/core/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/b/ag;


# instance fields
.field private final g:Ljava/util/concurrent/Executor;

.field private final h:I

.field private final i:I

.field private final j:Lcom/google/android/youtube/core/async/ar;

.field private final k:Lcom/google/android/youtube/core/async/ar;

.field private final l:Lcom/google/android/youtube/core/async/ar;

.field private final m:Lcom/google/android/youtube/core/async/ar;

.field private final n:Lcom/google/android/youtube/core/async/ar;

.field private final o:Lcom/google/android/youtube/core/async/ar;

.field private final p:Lcom/google/android/youtube/core/async/ar;

.field private final q:Lcom/google/android/youtube/core/async/ar;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/core/b/w;II)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/youtube/core/b/c;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;)V

    .line 140
    const-string v0, "cpu executor can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/v;->g:Ljava/util/concurrent/Executor;

    .line 143
    iput p7, p0, Lcom/google/android/youtube/core/b/v;->h:I

    .line 144
    iput p8, p0, Lcom/google/android/youtube/core/b/v;->i:I

    .line 146
    new-instance v0, Lcom/google/android/youtube/core/converter/http/be;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/http/be;-><init>()V

    iget v1, p0, Lcom/google/android/youtube/core/b/v;->h:I

    invoke-static {v1}, Lcom/google/android/youtube/core/b/v;->a(I)Lcom/google/android/youtube/core/cache/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/b/v;->e:Lcom/google/android/youtube/core/converter/http/dc;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/youtube/core/b/v;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/bc;)Lcom/google/android/youtube/core/async/ag;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/core/b/v;->d:Ljava/lang/String;

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Lcom/google/android/youtube/core/b/v;->b()Lcom/google/android/youtube/core/cache/d;

    move-result-object v2

    const-wide/32 v3, 0x240c8400

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/google/android/youtube/core/b/v;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    :cond_31
    const-wide/32 v2, 0x6ddd00

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/youtube/core/b/v;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/v;->j:Lcom/google/android/youtube/core/async/ar;

    .line 149
    new-instance v0, Lcom/google/android/youtube/core/converter/http/be;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/http/be;-><init>()V

    iget v1, p0, Lcom/google/android/youtube/core/b/v;->h:I

    invoke-static {v1}, Lcom/google/android/youtube/core/b/v;->b(I)Lcom/google/android/youtube/core/cache/g;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/b/v;->e:Lcom/google/android/youtube/core/converter/http/dc;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/youtube/core/b/v;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/bc;)Lcom/google/android/youtube/core/async/ag;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/core/b/v;->d:Ljava/lang/String;

    if-eqz v2, :cond_5a

    invoke-virtual {p0}, Lcom/google/android/youtube/core/b/v;->b()Lcom/google/android/youtube/core/cache/d;

    move-result-object v2

    const-wide/32 v3, 0x240c8400

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/google/android/youtube/core/b/v;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    :cond_5a
    const-wide/32 v2, 0x6ddd00

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/youtube/core/b/v;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/converter/http/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/converter/http/f;-><init>(Z)V

    iget v2, p0, Lcom/google/android/youtube/core/b/v;->i:I

    invoke-static {v2}, Lcom/google/android/youtube/core/b/v;->b(I)Lcom/google/android/youtube/core/cache/g;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/b/v;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v3}, Lcom/google/android/youtube/core/async/o;->a(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/converter/b;Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/b/v;->a(Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v0

    const-wide/32 v3, 0x6ddd00

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/google/android/youtube/core/b/v;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/v;->k:Lcom/google/android/youtube/core/async/ar;

    .line 150
    iget v0, p6, Lcom/google/android/youtube/core/b/w;->a:I

    iget-boolean v1, p6, Lcom/google/android/youtube/core/b/w;->d:Z

    const/4 v2, 0x1

    iget-object v3, p6, Lcom/google/android/youtube/core/b/w;->f:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/v;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/v;->l:Lcom/google/android/youtube/core/async/ar;

    .line 155
    iget v0, p6, Lcom/google/android/youtube/core/b/w;->b:I

    iget-boolean v1, p6, Lcom/google/android/youtube/core/b/w;->e:Z

    const/4 v2, 0x1

    iget-object v3, p6, Lcom/google/android/youtube/core/b/w;->g:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/v;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/v;->m:Lcom/google/android/youtube/core/async/ar;

    .line 160
    iget v0, p6, Lcom/google/android/youtube/core/b/w;->a:I

    iget-boolean v1, p6, Lcom/google/android/youtube/core/b/w;->d:Z

    const/4 v2, 0x0

    iget-object v3, p6, Lcom/google/android/youtube/core/b/w;->f:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/v;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/v;->n:Lcom/google/android/youtube/core/async/ar;

    .line 165
    iget v0, p6, Lcom/google/android/youtube/core/b/w;->b:I

    iget-boolean v1, p6, Lcom/google/android/youtube/core/b/w;->e:Z

    const/4 v2, 0x0

    iget-object v3, p6, Lcom/google/android/youtube/core/b/w;->g:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/v;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/v;->o:Lcom/google/android/youtube/core/async/ar;

    .line 170
    const/16 v0, 0x1e0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/v;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/v;->p:Lcom/google/android/youtube/core/async/ar;

    .line 171
    iget v0, p6, Lcom/google/android/youtube/core/b/w;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/v;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/v;->q:Lcom/google/android/youtube/core/async/ar;

    .line 172
    return-void
.end method

.method private a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ar;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    new-instance v0, Lcom/google/android/youtube/core/converter/http/f;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/converter/http/f;-><init>(IZZLandroid/graphics/Bitmap$Config;)V

    .line 238
    iget-object v1, p0, Lcom/google/android/youtube/core/b/v;->j:Lcom/google/android/youtube/core/async/ar;

    iget-object v2, p0, Lcom/google/android/youtube/core/b/v;->g:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/core/async/o;->a(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/converter/b;Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    .line 244
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/b/v;->a(Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v0

    .line 246
    if-eqz p3, :cond_20

    .line 248
    iget v1, p0, Lcom/google/android/youtube/core/b/v;->i:I

    invoke-static {v1}, Lcom/google/android/youtube/core/b/v;->a(I)Lcom/google/android/youtube/core/cache/b;

    move-result-object v1

    .line 249
    const-wide/32 v2, 0x6ddd00

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/youtube/core/b/v;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;J)Lcom/google/android/youtube/core/async/ay;

    move-result-object v0

    .line 252
    :cond_20
    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/core/b/w;Z)Lcom/google/android/youtube/core/b/v;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const-string v0, "cachePath cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/google/android/youtube/core/b/v;

    if-eqz p6, :cond_19

    const/16 v7, 0x12c

    :goto_b
    if-eqz p6, :cond_1c

    const/16 v8, 0x64

    :goto_f
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/b/v;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/core/b/w;II)V

    return-object v0

    :cond_19
    const/16 v7, 0x46

    goto :goto_b

    :cond_1c
    const/16 v8, 0x1e

    goto :goto_f
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/b/v;->k:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 176
    return-void
.end method

.method public final b(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/b/v;->l:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 180
    return-void
.end method

.method public final c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/core/b/v;->m:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 184
    return-void
.end method

.method public final d(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/core/b/v;->q:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 196
    return-void
.end method
