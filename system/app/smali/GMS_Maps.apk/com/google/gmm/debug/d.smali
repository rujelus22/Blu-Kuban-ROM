.class Lcom/google/gmm/debug/d;
.super Ljava/lang/Object;

# interfaces
.implements LZ/e;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/gmm/debug/f;->a()Lcom/google/gmm/debug/f;

    move-result-object v0

    const-string v1, "/logs/level"

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gmm/debug/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(LZ/d;Ljava/lang/Object;)V
    .registers 7

    const-string v0, "/logs/level"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    monitor-enter p0

    :try_start_9
    invoke-static {}, Lcom/google/gmm/debug/f;->a()Lcom/google/gmm/debug/f;

    move-result-object v0

    const-string v1, "/logs/level"

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gmm/debug/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New log source level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gmm/debug/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gmm/debug/c;->b(Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gmm/debug/c;->a([[Ljava/lang/Object;)[[Ljava/lang/Object;

    invoke-static {}, Lcom/google/gmm/debug/c;->a()V

    :cond_3f
    monitor-exit p0

    :cond_40
    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_41

    throw v0
.end method
