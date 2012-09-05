.class public abstract Lcom/google/googlenav/ui/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bj;


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:I

.field final synthetic c:Lcom/google/googlenav/ui/ak;

.field private volatile d:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/ak;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x2

    iput-object p1, p0, Lcom/google/googlenav/ui/ar;->c:Lcom/google/googlenav/ui/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/ui/ar;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/ar;->d:I

    iput-object p2, p0, Lcom/google/googlenav/ui/ar;->a:Ljava/lang/String;

    return-void
.end method

.method private e()V
    .registers 7

    const/4 v4, -0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->c:Lcom/google/googlenav/ui/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/ak;->g(Lcom/google/googlenav/ui/ak;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ar;

    iget v3, v0, Lcom/google/googlenav/ui/ar;->b:I

    if-eq v3, v4, :cond_20

    iget v0, v0, Lcom/google/googlenav/ui/ar;->d:I

    if-ne v0, v4, :cond_c

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->c:Lcom/google/googlenav/ui/ak;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/ak;->a(Lcom/google/googlenav/ui/ak;Z)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/ar;->c:Lcom/google/googlenav/ui/ak;

    invoke-static {v1}, Lcom/google/googlenav/ui/ak;->g(Lcom/google/googlenav/ui/ak;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ar;

    iget v4, v0, Lcom/google/googlenav/ui/ar;->b:I

    iget v5, v0, Lcom/google/googlenav/ui/ar;->d:I

    if-eq v4, v5, :cond_66

    iget v4, v0, Lcom/google/googlenav/ui/ar;->b:I

    if-ne v4, v2, :cond_4e

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ar;->d()V

    move v0, v1

    :goto_4c
    move v1, v0

    goto :goto_32

    :cond_4e
    move v0, v2

    goto :goto_4c

    :cond_50
    if-nez v1, :cond_5a

    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->c:Lcom/google/googlenav/ui/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/ak;->a(Lcom/google/googlenav/ui/ak;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_5a
    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->c:Lcom/google/googlenav/ui/ak;

    iget-object v1, p0, Lcom/google/googlenav/ui/ar;->c:Lcom/google/googlenav/ui/ak;

    invoke-static {v1}, Lcom/google/googlenav/ui/ak;->a(Lcom/google/googlenav/ui/ak;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/ak;->b(Lcom/google/googlenav/ui/ak;Z)V

    goto :goto_20

    :cond_66
    move v0, v1

    goto :goto_4c
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->c:Lcom/google/googlenav/ui/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/ak;->g(Lcom/google/googlenav/ui/ak;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iput p1, p0, Lcom/google/googlenav/ui/ar;->d:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ar;->a()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/ar;->b:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/ar;->e()V

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .registers 4

    iget v0, p0, Lcom/google/googlenav/ui/ar;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ar;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public c()V
    .registers 3

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/googlenav/ui/ar;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/ar;->d:I

    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, Lax/be;->a(Ljava/lang/String;ILax/bj;)V

    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ar;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lax/be;->a(Ljava/lang/String;ILax/bk;)V

    return-void
.end method
