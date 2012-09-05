.class final Lcom/google/android/youtube/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/BaseApplication;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/BaseApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/android/youtube/core/a;->a:Lcom/google/android/youtube/core/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/youtube/core/a;->a:Lcom/google/android/youtube/core/BaseApplication;

    invoke-static {v0}, Lcom/google/android/youtube/core/BaseApplication;->a(Lcom/google/android/youtube/core/BaseApplication;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    return-void
.end method
