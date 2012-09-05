.class Lx/t;
.super Lz/d;


# instance fields
.field private final a:I

.field private final b:Lx/s;


# direct methods
.method constructor <init>(Ljava/lang/String;ILx/s;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheCommitter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lz/d;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lx/t;->a:I

    iput-object p3, p0, Lx/t;->b:Lx/s;

    invoke-virtual {p0}, Lx/t;->start()V

    return-void
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
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_18

    :cond_9
    :goto_9
    :try_start_9
    iget v0, p0, Lx/t;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lx/t;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_f} :catch_34

    iget-object v0, p0, Lx/t;->b:Lx/s;

    invoke-static {v0}, Lx/s;->a(Lx/s;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {p0}, Lx/t;->getName()Ljava/lang/String;

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

    :catch_34
    move-exception v0

    goto :goto_17
.end method
