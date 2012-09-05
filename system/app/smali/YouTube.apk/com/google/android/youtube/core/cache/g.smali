.class final Lcom/google/android/youtube/core/cache/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/cache/e;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/e;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/g;->a:Lcom/google/android/youtube/core/cache/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/g;->a:Lcom/google/android/youtube/core/cache/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/e;->a(Lcom/google/android/youtube/core/cache/e;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/g;->a:Lcom/google/android/youtube/core/cache/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/e;->b(Lcom/google/android/youtube/core/cache/e;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 111
    return-void
.end method
