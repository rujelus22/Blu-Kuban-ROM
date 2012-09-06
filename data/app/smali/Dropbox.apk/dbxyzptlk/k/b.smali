.class final Ldbxyzptlk/k/b;
.super Ljava/lang/Thread;
.source "panda.py"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ldbxyzptlk/k/e;

.field final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ldbxyzptlk/k/e;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Ldbxyzptlk/k/b;->a:Landroid/content/Context;

    iput-object p2, p0, Ldbxyzptlk/k/b;->b:Ldbxyzptlk/k/e;

    iput-object p3, p0, Ldbxyzptlk/k/b;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Ldbxyzptlk/k/b;->a:Landroid/content/Context;

    iget-object v1, p0, Ldbxyzptlk/k/b;->b:Ldbxyzptlk/k/e;

    invoke-virtual {v1}, Ldbxyzptlk/k/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldbxyzptlk/k/b;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Ldbxyzptlk/k/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 72
    :goto_d
    return-void

    .line 69
    :catch_e
    move-exception v0

    .line 70
    invoke-static {}, Ldbxyzptlk/k/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
