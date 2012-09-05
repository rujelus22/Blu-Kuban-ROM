.class public abstract Lcom/google/googlenav/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/google/googlenav/y;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/x;-><init>(ZZLcom/google/googlenav/y;)V

    return-void
.end method

.method public constructor <init>(ZZLcom/google/googlenav/y;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/googlenav/x;->a:Z

    iput-boolean p2, p0, Lcom/google/googlenav/x;->b:Z

    iput-object p3, p0, Lcom/google/googlenav/x;->c:Lcom/google/googlenav/y;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/x;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/x;->a:Z

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected b()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/u;->d()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/x;->b:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/googlenav/u;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/x;->c:Lcom/google/googlenav/y;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/google/googlenav/x;->c:Lcom/google/googlenav/y;

    monitor-enter v1

    :try_start_12
    invoke-virtual {p0}, Lcom/google/googlenav/x;->a()V

    monitor-exit v1

    goto :goto_a

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    invoke-virtual {p0}, Lcom/google/googlenav/x;->a()V

    goto :goto_a
.end method
