.class final Lcom/google/android/youtube/core/cache/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/cache/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/d;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/f;->a:Lcom/google/android/youtube/core/cache/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/f;->a:Lcom/google/android/youtube/core/cache/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/d;->a(Lcom/google/android/youtube/core/cache/d;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/f;->a:Lcom/google/android/youtube/core/cache/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/d;->b(Lcom/google/android/youtube/core/cache/d;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 111
    return-void
.end method
