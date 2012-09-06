.class public abstract Lcom/google/googlenav/common/io/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/d;


# instance fields
.field protected final a:Lcom/google/googlenav/common/io/j;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->b:Z

    .line 28
    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->c:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->d:Z

    .line 49
    iput-object p1, p0, Lcom/google/googlenav/common/io/a;->e:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/io/a;->a:Lcom/google/googlenav/common/io/j;

    .line 51
    return-void
.end method

.method private b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->d:Z

    .line 114
    iput-boolean p1, p0, Lcom/google/googlenav/common/io/a;->c:Z

    .line 115
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/googlenav/common/io/a;->a:Lcom/google/googlenav/common/io/j;

    iget-object v1, p0, Lcom/google/googlenav/common/io/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/a;->b(Z)V

    .line 60
    return-void

    .line 59
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public declared-synchronized a(Z)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 73
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lcom/google/googlenav/common/io/a;->b:Z

    .line 75
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/a;->d()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz p1, :cond_23

    .line 76
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->c:Z

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/common/io/a;->a:Lcom/google/googlenav/common/io/j;

    iget-object v2, p0, Lcom/google/googlenav/common/io/a;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/common/io/a;->b()B

    move-result v5

    aput-byte v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_25

    move v0, v1

    .line 81
    :cond_23
    monitor-exit p0

    return v0

    .line 73
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()B
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/googlenav/common/io/a;->d:Z

    if-nez v0, :cond_7

    .line 104
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/a;->a()V

    .line 106
    :cond_7
    iget-boolean v0, p0, Lcom/google/googlenav/common/io/a;->c:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/googlenav/common/io/a;->b:Z

    return v0
.end method
