.class public abstract LaI/d;
.super LaI/f;
.source "SourceFile"


# instance fields
.field private volatile b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, LaI/f;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, LaI/d;->b:I

    return-void
.end method

.method static synthetic a(LaI/d;)I
    .registers 3
    .parameter

    .prologue
    .line 21
    iget v0, p0, LaI/d;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, LaI/d;->b:I

    return v0
.end method


# virtual methods
.method public a(LaI/s;)V
    .registers 8
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, LaI/d;->a:Z

    .line 48
    invoke-virtual {p0, p1}, LaI/d;->b(LaI/s;)Z

    move-result v4

    .line 49
    invoke-virtual {p0, p1}, LaI/d;->c(LaI/s;)Z

    move-result v5

    .line 50
    if-nez v4, :cond_10

    if-nez v5, :cond_10

    .line 81
    :goto_f
    return-void

    .line 54
    :cond_10
    iget v0, p0, LaI/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaI/d;->b:I

    .line 55
    new-instance v0, LaI/e;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LaI/e;-><init>(LaI/d;LY/c;LaI/s;ZZ)V

    invoke-virtual {v0}, LaI/e;->g()V

    goto :goto_f
.end method

.method protected abstract a_(LaI/s;)LaI/z;
.end method

.method public declared-synchronized f()Z
    .registers 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaI/d;->a:Z

    if-eqz v0, :cond_c

    iget v0, p0, LaI/d;->b:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
