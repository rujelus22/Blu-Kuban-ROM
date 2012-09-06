.class public LD/h;
.super LC/b;
.source "SourceFile"


# instance fields
.field private final a:LF/a;

.field private final b:Landroid/content/Context;

.field private final c:LF/b;

.field private final d:Lcom/google/common/collect/cW;

.field private final e:LC/T;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LC/T;Landroid/content/Context;Lcom/google/common/collect/cW;LF/a;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const-string v0, "playback_signal_provider"

    invoke-direct {p0, v0, p1}, LC/b;-><init>(Ljava/lang/String;LC/T;)V

    .line 89
    new-instance v0, LD/i;

    invoke-direct {v0, p0}, LD/i;-><init>(LD/h;)V

    iput-object v0, p0, LD/h;->f:Ljava/lang/Runnable;

    .line 56
    iput-object p2, p0, LD/h;->b:Landroid/content/Context;

    .line 57
    iput-object p1, p0, LD/h;->e:LC/T;

    .line 58
    iput-object p3, p0, LD/h;->d:Lcom/google/common/collect/cW;

    .line 59
    iput-object p4, p0, LD/h;->a:LF/a;

    .line 60
    new-instance v0, LF/b;

    invoke-direct {v0, p4}, LF/b;-><init>(LF/a;)V

    iput-object v0, p0, LD/h;->c:LF/b;

    .line 61
    invoke-virtual {p4}, LF/a;->b()J

    move-result-wide v0

    .line 69
    invoke-direct {p0, v0, v1}, LD/h;->a(J)V

    .line 70
    return-void
.end method

.method static synthetic a(LD/h;)Lcom/google/common/collect/cW;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LD/h;->d:Lcom/google/common/collect/cW;

    return-object v0
.end method

.method private a(J)V
    .registers 5
    .parameter

    .prologue
    .line 77
    :cond_0
    iget-object v0, p0, LD/h;->d:Lcom/google/common/collect/cW;

    invoke-interface {v0}, Lcom/google/common/collect/cW;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, LD/h;->d:Lcom/google/common/collect/cW;

    invoke-interface {v0}, Lcom/google/common/collect/cW;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD/g;

    iget-wide v0, v0, LD/g;->c:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    .line 80
    :cond_16
    return-void
.end method

.method static synthetic b(LD/h;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LD/h;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(LD/h;)LF/a;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LD/h;->a:LF/a;

    return-object v0
.end method

.method static synthetic d(LD/h;)LC/T;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LD/h;->e:LC/T;

    return-object v0
.end method

.method static synthetic e(LD/h;)LF/b;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LD/h;->c:LF/b;

    return-object v0
.end method

.method static synthetic f(LD/h;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LD/h;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public b()V
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p0}, LD/h;->e()Z

    move-result v0

    if-nez v0, :cond_10

    .line 156
    invoke-super {p0}, LC/b;->b()V

    .line 157
    iget-object v0, p0, LD/h;->c:LF/b;

    iget-object v1, p0, LD/h;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LF/b;->b(Ljava/lang/Runnable;)Z

    .line 159
    :cond_10
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 163
    iget-object v1, p0, LD/h;->f:Ljava/lang/Runnable;

    monitor-enter v1

    .line 164
    :try_start_3
    iget-object v0, p0, LD/h;->c:LF/b;

    iget-object v2, p0, LD/h;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, LF/b;->a(Ljava/lang/Runnable;)V

    .line 169
    invoke-super {p0}, LC/b;->d()V

    .line 170
    monitor-exit v1

    .line 171
    return-void

    .line 170
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method
