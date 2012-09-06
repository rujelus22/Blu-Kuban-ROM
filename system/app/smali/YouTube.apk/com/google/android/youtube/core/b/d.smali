.class public final Lcom/google/android/youtube/core/b/d;
.super Lcom/google/android/youtube/core/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/b/a;


# instance fields
.field private final g:Landroid/content/SharedPreferences;

.field private final h:Lcom/google/android/youtube/core/b/ae;

.field private final i:Lcom/google/android/youtube/core/player/an;

.field private final j:Lcom/google/android/youtube/core/utils/a;

.field private final k:Lcom/google/android/youtube/core/async/ar;

.field private final l:Lcom/google/android/youtube/core/async/ar;

.field private m:Lcom/google/android/youtube/core/async/l;

.field private n:J

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/d;Landroid/content/SharedPreferences;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/player/an;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p2, p5, p7, p3}, Lcom/google/android/youtube/core/b/c;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/utils/d;)V

    .line 87
    const-string v1, "context cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "usernameGetter cannot be null"

    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "preferences cannot be null"

    invoke-static {p4, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/google/android/youtube/core/b/d;->g:Landroid/content/SharedPreferences;

    .line 91
    const-string v1, "gdataClient cannot be null"

    invoke-static {p6, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/ae;

    iput-object v1, p0, Lcom/google/android/youtube/core/b/d;->h:Lcom/google/android/youtube/core/b/ae;

    .line 92
    const-string v1, "streamSelector cannot be null"

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/an;

    iput-object v1, p0, Lcom/google/android/youtube/core/b/d;->i:Lcom/google/android/youtube/core/player/an;

    .line 93
    invoke-interface {p3}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v1

    .line 94
    const-string v3, "last_ad_time"

    const-wide/16 v4, 0x0

    invoke-interface {p4, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/youtube/core/b/d;->n:J

    .line 96
    new-instance v1, Lcom/google/android/youtube/core/utils/a;

    move-object v2, p1

    move-object/from16 v3, p8

    move-object/from16 v4, p11

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/core/utils/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/an;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/b/d;->j:Lcom/google/android/youtube/core/utils/a;

    .line 98
    new-instance v1, Lcom/google/android/youtube/core/converter/http/a;

    iget-object v2, p0, Lcom/google/android/youtube/core/b/d;->c:Lcom/google/android/youtube/core/utils/d;

    iget-object v4, p0, Lcom/google/android/youtube/core/b/d;->j:Lcom/google/android/youtube/core/utils/a;

    move-object/from16 v3, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p13

    move-object/from16 v7, p12

    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/core/converter/http/a;-><init>(Lcom/google/android/youtube/core/utils/d;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/youtube/core/utils/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v1}, Lcom/google/android/youtube/core/b/d;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/bc;)Lcom/google/android/youtube/core/async/ag;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/b/d;->a(Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/b/d;->k:Lcom/google/android/youtube/core/async/ar;

    .line 100
    new-instance v1, Lcom/google/android/youtube/core/converter/http/dv;

    iget-object v2, p0, Lcom/google/android/youtube/core/b/d;->f:Lcom/google/android/youtube/core/converter/k;

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/converter/http/dv;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    iget-object v2, p0, Lcom/google/android/youtube/core/b/d;->e:Lcom/google/android/youtube/core/converter/http/dc;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/youtube/core/b/d;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/bc;)Lcom/google/android/youtube/core/async/ag;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/b/d;->a(Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/b/d;->l:Lcom/google/android/youtube/core/async/ar;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/ar;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/core/b/d;->l:Lcom/google/android/youtube/core/async/ar;

    return-object v0
.end method

.method static synthetic a(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 50
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.youtube"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic b(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/l;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/core/b/d;->m:Lcom/google/android/youtube/core/async/l;

    return-object v0
.end method

.method static synthetic b(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/get_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "video_id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "v"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method static synthetic c(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/core/b/d;->h:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/player/an;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/core/b/d;->i:Lcom/google/android/youtube/core/player/an;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/b/d;)Z
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/d;->o:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/core/b/d;->c:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/b/d;->n:J

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/b/d;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_ad_time"

    iget-wide v2, p0, Lcom/google/android/youtube/core/b/d;->n:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 117
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/d;->m:Lcom/google/android/youtube/core/async/l;

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/b/d;->k:Lcom/google/android/youtube/core/async/ar;

    new-instance v1, Lcom/google/android/youtube/core/converter/http/b;

    iget-wide v2, p0, Lcom/google/android/youtube/core/b/d;->n:J

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/youtube/core/converter/http/b;-><init>(Ljava/lang/String;J)V

    new-instance v2, Lcom/google/android/youtube/core/b/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/core/b/e;-><init>(Lcom/google/android/youtube/core/b/d;B)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 111
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/core/b/d;->j:Lcom/google/android/youtube/core/utils/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/utils/a;->a(Z)V

    .line 105
    iput-boolean p1, p0, Lcom/google/android/youtube/core/b/d;->o:Z

    .line 106
    return-void
.end method
