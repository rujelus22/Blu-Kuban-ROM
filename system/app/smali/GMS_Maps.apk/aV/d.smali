.class public abstract LaV/d;
.super LaV/f;


# instance fields
.field private volatile b:I

.field private volatile c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, LaV/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LaV/d;->b:I

    return-void
.end method

.method static synthetic a(LaV/d;)I
    .registers 3

    iget v0, p0, LaV/d;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, LaV/d;->b:I

    return v0
.end method

.method static synthetic b(LaV/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaV/d;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, LaV/d;->c:Ljava/lang/String;

    iget v0, p0, LaV/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaV/d;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LaV/d;->a:Z

    new-instance v0, LaV/e;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LaV/e;-><init>(LaV/d;Lap/c;Ljava/lang/String;)V

    invoke-virtual {v0}, LaV/e;->g()V

    return-void
.end method

.method protected abstract b_(Ljava/lang/String;)LaV/r;
.end method

.method public declared-synchronized e()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaV/d;->a:Z

    if-eqz v0, :cond_c

    iget v0, p0, LaV/d;->b:I
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
