.class LagP;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lahi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lahi",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:LafX;

.field volatile a:Lahi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lahi",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final a:Lama;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lama",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3504
    invoke-static {}, Lagu;->a()Lahi;

    move-result-object v0

    invoke-direct {p0, v0}, LagP;-><init>(Lahi;)V

    .line 3505
    return-void
.end method

.method public constructor <init>(Lahi;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahi",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3500
    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    iput-object v0, p0, LagP;->a:Lama;

    .line 3501
    new-instance v0, LafX;

    invoke-direct {v0}, LafX;-><init>()V

    iput-object v0, p0, LagP;->a:LafX;

    .line 3508
    iput-object p1, p0, LagP;->a:Lahi;

    .line 3509
    return-void
.end method

.method private a(Ljava/lang/Throwable;)LalU;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "LalU",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3544
    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    .line 3545
    invoke-static {v0, p1}, LagP;->a(Lama;Ljava/lang/Throwable;)Z

    .line 3546
    return-object v0
.end method

.method private static a(Lama;Ljava/lang/Throwable;)Z
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lama",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3536
    :try_start_0
    invoke-virtual {p0, p1}, Lama;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 3539
    :goto_4
    return v0

    .line 3537
    :catch_5
    move-exception v0

    .line 3539
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 3523
    iget-object v0, p0, LagP;->a:Lahi;

    invoke-interface {v0}, Lahi;->a()I

    move-result v0

    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 3581
    iget-object v0, p0, LagP;->a:LafX;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LafX;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3600
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lahi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lahi",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3595
    iget-object v0, p0, LagP;->a:Lahi;

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;LagU;)Lahi;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;",
            "LagU",
            "<TK;TV;>;)",
            "Lahi",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3605
    return-object p0
.end method

.method public a(Ljava/lang/Object;Lagq;)LalU;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lagq",
            "<-TK;TV;>;)",
            "LalU",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3564
    iget-object v0, p0, LagP;->a:LafX;

    invoke-virtual {v0}, LafX;->a()LafX;

    .line 3565
    iget-object v0, p0, LagP;->a:Lahi;

    invoke-interface {v0}, Lahi;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3567
    if-nez v0, :cond_1f

    .line 3568
    :try_start_d
    invoke-virtual {p2, p1}, Lagq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3569
    invoke-virtual {p0, v0}, LagP;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v0, p0, LagP;->a:Lama;

    .line 3576
    :cond_19
    :goto_19
    return-object v0

    .line 3569
    :cond_1a
    invoke-static {v0}, LalO;->a(Ljava/lang/Object;)LalU;

    move-result-object v0

    goto :goto_19

    .line 3571
    :cond_1f
    invoke-virtual {p2, p1, v0}, Lagq;->a(Ljava/lang/Object;Ljava/lang/Object;)LalU;

    move-result-object v0

    .line 3573
    if-nez v0, :cond_19

    const/4 v0, 0x0

    invoke-static {v0}, LalO;->a(Ljava/lang/Object;)LalU;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_19

    .line 3575
    :catch_2b
    move-exception v0

    .line 3576
    invoke-virtual {p0, v0}, LagP;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v0, p0, LagP;->a:Lama;

    goto :goto_19

    :cond_35
    invoke-direct {p0, v0}, LagP;->a(Ljava/lang/Throwable;)LalU;

    move-result-object v0

    goto :goto_19
.end method

.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3586
    iget-object v0, p0, LagP;->a:Lama;

    invoke-static {v0}, Lamc;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 3551
    if-eqz p1, :cond_6

    .line 3554
    invoke-virtual {p0, p1}, LagP;->a(Ljava/lang/Object;)Z

    .line 3561
    :goto_5
    return-void

    .line 3557
    :cond_6
    invoke-static {}, Lagu;->a()Lahi;

    move-result-object v0

    iput-object v0, p0, LagP;->a:Lahi;

    goto :goto_5
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 3513
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 3527
    iget-object v0, p0, LagP;->a:Lama;

    invoke-virtual {v0, p1}, Lama;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .registers 3
    .parameter

    .prologue
    .line 3531
    iget-object v0, p0, LagP;->a:Lama;

    invoke-static {v0, p1}, LagP;->a(Lama;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 3518
    iget-object v0, p0, LagP;->a:Lahi;

    invoke-interface {v0}, Lahi;->b()Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3591
    iget-object v0, p0, LagP;->a:Lahi;

    invoke-interface {v0}, Lahi;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
