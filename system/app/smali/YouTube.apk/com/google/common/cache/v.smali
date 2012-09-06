.class final Lcom/google/common/cache/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/ag;


# instance fields
.field volatile a:Lcom/google/common/cache/ag;

.field final b:Lcom/google/common/util/concurrent/k;

.field final c:Lcom/google/common/base/aj;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3504
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/ag;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/v;-><init>(Lcom/google/common/cache/ag;)V

    .line 3505
    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/ag;)V
    .registers 3
    .parameter

    .prologue
    .line 3507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3500
    invoke-static {}, Lcom/google/common/util/concurrent/k;->a()Lcom/google/common/util/concurrent/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/v;->b:Lcom/google/common/util/concurrent/k;

    .line 3501
    new-instance v0, Lcom/google/common/base/aj;

    invoke-direct {v0}, Lcom/google/common/base/aj;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/v;->c:Lcom/google/common/base/aj;

    .line 3508
    iput-object p1, p0, Lcom/google/common/cache/v;->a:Lcom/google/common/cache/ag;

    .line 3509
    return-void
.end method

.method private static a(Lcom/google/common/util/concurrent/k;Ljava/lang/Throwable;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3536
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/k;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 3539
    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 3523
    iget-object v0, p0, Lcom/google/common/cache/v;->a:Lcom/google/common/cache/ag;

    invoke-interface {v0}, Lcom/google/common/cache/ag;->a()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/cache/x;)Lcom/google/common/cache/ag;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3605
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/f;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3564
    iget-object v0, p0, Lcom/google/common/cache/v;->c:Lcom/google/common/base/aj;

    invoke-virtual {v0}, Lcom/google/common/base/aj;->a()Lcom/google/common/base/aj;

    .line 3565
    iget-object v0, p0, Lcom/google/common/cache/v;->a:Lcom/google/common/cache/ag;

    invoke-interface {v0}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3567
    if-nez v0, :cond_1f

    .line 3568
    :try_start_d
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3569
    invoke-virtual {p0, v0}, Lcom/google/common/cache/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lcom/google/common/cache/v;->b:Lcom/google/common/util/concurrent/k;

    .line 3576
    :cond_19
    :goto_19
    return-object v0

    .line 3569
    :cond_1a
    invoke-static {v0}, Lcom/google/common/util/concurrent/d;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/f;

    move-result-object v0

    goto :goto_19

    .line 3571
    :cond_1f
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/f;

    move-result-object v0

    .line 3573
    if-nez v0, :cond_19

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/d;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/f;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_19

    .line 3575
    :catch_2b
    move-exception v0

    move-object v1, v0

    .line 3576
    invoke-virtual {p0, v1}, Lcom/google/common/cache/v;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/common/cache/v;->b:Lcom/google/common/util/concurrent/k;

    goto :goto_19

    :cond_36
    invoke-static {}, Lcom/google/common/util/concurrent/k;->a()Lcom/google/common/util/concurrent/k;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/common/cache/v;->a(Lcom/google/common/util/concurrent/k;Ljava/lang/Throwable;)Z

    goto :goto_19
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3551
    if-eqz p1, :cond_6

    .line 3554
    invoke-virtual {p0, p1}, Lcom/google/common/cache/v;->b(Ljava/lang/Object;)Z

    .line 3561
    :goto_5
    return-void

    .line 3557
    :cond_6
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/v;->a:Lcom/google/common/cache/ag;

    goto :goto_5
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .registers 3
    .parameter

    .prologue
    .line 3531
    iget-object v0, p0, Lcom/google/common/cache/v;->b:Lcom/google/common/util/concurrent/k;

    invoke-static {v0, p1}, Lcom/google/common/cache/v;->a(Lcom/google/common/util/concurrent/k;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 3600
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/google/common/cache/v;->b:Lcom/google/common/util/concurrent/k;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/k;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 3513
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 3518
    iget-object v0, p0, Lcom/google/common/cache/v;->a:Lcom/google/common/cache/ag;

    invoke-interface {v0}, Lcom/google/common/cache/ag;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/google/common/cache/v;->b:Lcom/google/common/util/concurrent/k;

    invoke-static {v0}, Lcom/google/common/util/concurrent/l;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .registers 3

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/google/common/cache/v;->c:Lcom/google/common/base/aj;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/aj;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3591
    iget-object v0, p0, Lcom/google/common/cache/v;->a:Lcom/google/common/cache/ag;

    invoke-interface {v0}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
