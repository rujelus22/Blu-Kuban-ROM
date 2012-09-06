.class final Lcom/google/android/youtube/core/utils/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/android/youtube/core/utils/s;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/utils/s;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/youtube/core/utils/t;->b:Lcom/google/android/youtube/core/utils/s;

    iput-object p2, p0, Lcom/google/android/youtube/core/utils/t;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/t;->b:Lcom/google/android/youtube/core/utils/s;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/s;->a(Lcom/google/android/youtube/core/utils/s;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/t;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 39
    return-void
.end method
