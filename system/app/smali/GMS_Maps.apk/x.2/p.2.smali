.class Lx/p;
.super Lz/d;


# instance fields
.field final synthetic a:Lx/k;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method constructor <init>(Lx/k;)V
    .registers 4

    iput-object p1, p0, Lx/p;->a:Lx/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheCommitter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lx/k;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lz/d;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lx/k;->d(Lx/k;)I

    move-result v0

    if-gez v0, :cond_26

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/p;->c:Z

    :goto_25
    return-void

    :cond_26
    invoke-virtual {p0}, Lx/p;->start()V

    goto :goto_25
.end method


# virtual methods
.method public a()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_12

    :goto_9
    iget-object v0, p0, Lx/p;->a:Lx/k;

    invoke-virtual {v0}, Lx/k;->m()Lx/x;

    move-result-object v0

    if-nez v0, :cond_2e

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-virtual {p0}, Lx/p;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_2e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lx/p;->b:Z

    :try_start_31
    iget-object v1, p0, Lx/p;->a:Lx/k;

    invoke-static {v1}, Lx/k;->d(Lx/k;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lx/p;->sleep(J)V

    iget-boolean v1, p0, Lx/p;->b:Z

    if-nez v1, :cond_2e

    invoke-interface {v0}, Lx/x;->k_()V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_42} :catch_46

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/p;->c:Z

    goto :goto_11

    :catch_46
    move-exception v0

    goto :goto_11
.end method

.method b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/p;->b:Z

    return-void
.end method

.method c()Z
    .registers 2

    iget-boolean v0, p0, Lx/p;->c:Z

    return v0
.end method
