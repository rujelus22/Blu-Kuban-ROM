.class public LX/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:LX/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LX/b;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, LX/c;->a:LX/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    invoke-static {p1}, LX/b;->a(LX/b;)V

    .line 88
    iput-object p2, p0, LX/c;->b:Ljava/lang/String;

    .line 89
    iput-object p3, p0, LX/c;->c:Ljava/lang/Runnable;

    .line 90
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, LX/c;->a:LX/b;

    invoke-static {v0}, LX/b;->b(LX/b;)V

    .line 96
    iget-object v0, p0, LX/c;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_10

    .line 102
    iget-object v0, p0, LX/c;->a:LX/b;

    invoke-static {v0}, LX/b;->c(LX/b;)V

    .line 104
    :goto_f
    return-void

    .line 97
    :catch_10
    move-exception v0

    .line 100
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    .line 102
    iget-object v0, p0, LX/c;->a:LX/b;

    invoke-static {v0}, LX/b;->c(LX/b;)V

    goto :goto_f

    :catchall_1a
    move-exception v0

    iget-object v1, p0, LX/c;->a:LX/b;

    invoke-static {v1}, LX/b;->c(LX/b;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LX/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LX/c;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
