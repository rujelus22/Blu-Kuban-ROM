.class final Lcom/google/android/youtube/core/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/android/youtube/core/b;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/b;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/android/youtube/core/c;->b:Lcom/google/android/youtube/core/b;

    iput-object p2, p0, Lcom/google/android/youtube/core/c;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/youtube/core/c;->b:Lcom/google/android/youtube/core/b;

    invoke-static {v0}, Lcom/google/android/youtube/core/b;->a(Lcom/google/android/youtube/core/b;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/core/c;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 473
    return-void
.end method
