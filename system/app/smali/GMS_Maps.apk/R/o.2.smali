.class Lr/o;
.super Lt/c;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lr/n;


# direct methods
.method constructor <init>(Ljava/lang/String;ILr/n;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheCommitter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lt/c;-><init>(Ljava/lang/String;)V

    .line 526
    iput p2, p0, Lr/o;->a:I

    .line 527
    iput-object p3, p0, Lr/o;->b:Lr/n;

    .line 528
    invoke-virtual {p0}, Lr/o;->start()V

    .line 529
    return-void
.end method


# virtual methods
.method public n_()V
    .registers 5

    .prologue
    .line 536
    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_18

    .line 543
    :cond_9
    :goto_9
    :try_start_9
    iget v0, p0, Lr/o;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lr/o;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_f} :catch_34

    .line 548
    iget-object v0, p0, Lr/o;->b:Lr/n;

    invoke-static {v0}, Lr/n;->a(Lr/n;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 552
    :goto_17
    return-void

    .line 537
    :catch_18
    move-exception v0

    .line 538
    invoke-virtual {p0}, Lr/o;->getName()Ljava/lang/String;

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

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 544
    :catch_34
    move-exception v0

    goto :goto_17
.end method
