.class LaT/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaT/i;


# direct methods
.method constructor <init>(LaT/i;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, LaT/j;->a:LaT/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, LaT/j;->a:LaT/i;

    invoke-static {v0}, LaT/i;->a(LaT/i;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 79
    :try_start_9
    iget-object v0, p0, LaT/j;->a:LaT/i;

    invoke-static {v0}, LaT/i;->b(LaT/i;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 80
    iget-object v0, p0, LaT/j;->a:LaT/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaT/i;->a(LaT/i;Z)Z

    .line 81
    iget-object v0, p0, LaT/j;->a:LaT/i;

    invoke-virtual {v0}, LaT/i;->b()V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_26

    .line 84
    :cond_1c
    iget-object v0, p0, LaT/j;->a:LaT/i;

    invoke-static {v0}, LaT/i;->a(LaT/i;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 86
    return-void

    .line 84
    :catchall_26
    move-exception v0

    iget-object v1, p0, LaT/j;->a:LaT/i;

    invoke-static {v1}, LaT/i;->a(LaT/i;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
