.class Lr/k;
.super Lt/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lr/f;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method constructor <init>(Lr/f;)V
    .registers 4
    .parameter

    .prologue
    .line 1104
    iput-object p1, p0, Lr/k;->a:Lr/f;

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheCommitter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lr/f;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lt/c;-><init>(Ljava/lang/String;)V

    .line 1106
    invoke-static {p1}, Lr/f;->d(Lr/f;)I

    move-result v0

    if-gez v0, :cond_26

    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/k;->c:Z

    .line 1111
    :goto_25
    return-void

    .line 1110
    :cond_26
    invoke-virtual {p0}, Lr/k;->start()V

    goto :goto_25
.end method


# virtual methods
.method b()V
    .registers 2

    .prologue
    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/k;->b:Z

    .line 1161
    return-void
.end method

.method c()Z
    .registers 2

    .prologue
    .line 1164
    iget-boolean v0, p0, Lr/k;->c:Z

    return v0
.end method

.method public n_()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1118
    :try_start_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_a} :catch_13

    .line 1122
    :goto_a
    iget-object v0, p0, Lr/k;->a:Lr/f;

    invoke-virtual {v0}, Lr/f;->l()Lr/s;

    move-result-object v1

    .line 1123
    if-nez v1, :cond_2f

    .line 1157
    :goto_12
    return-void

    .line 1119
    :catch_13
    move-exception v0

    .line 1120
    invoke-virtual {p0}, Lr/k;->getName()Ljava/lang/String;

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

    goto :goto_a

    .line 1127
    :cond_2f
    iget-boolean v0, p0, Lr/k;->b:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lr/k;->a:Lr/f;

    invoke-static {v0}, Lr/f;->e(Lr/f;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1131
    iget-object v0, p0, Lr/k;->a:Lr/f;

    invoke-static {v0, v4}, Lr/f;->a(Lr/f;Z)Z

    .line 1132
    invoke-interface {v1}, Lr/s;->o_()V

    .line 1155
    :goto_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/k;->c:Z

    .line 1156
    iget-object v0, p0, Lr/k;->a:Lr/f;

    invoke-static {v0}, Lr/f;->f(Lr/f;)V

    goto :goto_12

    .line 1135
    :cond_4c
    iput-boolean v4, p0, Lr/k;->b:Z

    .line 1137
    :try_start_4e
    iget-object v0, p0, Lr/k;->a:Lr/f;

    invoke-static {v0}, Lr/f;->d(Lr/f;)I

    move-result v0

    .line 1138
    :goto_54
    if-lez v0, :cond_63

    .line 1139
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Lr/k;->sleep(J)V

    .line 1140
    iget-object v2, p0, Lr/k;->a:Lr/f;

    invoke-static {v2}, Lr/f;->e(Lr/f;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1145
    :cond_63
    iget-boolean v0, p0, Lr/k;->b:Z

    if-nez v0, :cond_4c

    .line 1146
    iget-object v0, p0, Lr/k;->a:Lr/f;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lr/f;->a(Lr/f;Z)Z

    .line 1147
    invoke-interface {v1}, Lr/s;->o_()V
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_70} :catch_71

    goto :goto_43

    .line 1150
    :catch_71
    move-exception v0

    goto :goto_12

    .line 1143
    :cond_73
    add-int/lit16 v0, v0, -0x3e8

    goto :goto_54
.end method
