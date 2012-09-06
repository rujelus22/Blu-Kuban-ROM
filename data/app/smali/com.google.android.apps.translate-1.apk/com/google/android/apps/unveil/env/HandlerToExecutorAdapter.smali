.class public Lcom/google/android/apps/unveil/env/HandlerToExecutorAdapter;
.super Ljava/lang/Object;
.source "HandlerToExecutorAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/HandlerToExecutorAdapter;->handler:Landroid/os/Handler;

    .line 20
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "command"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/HandlerToExecutorAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method
