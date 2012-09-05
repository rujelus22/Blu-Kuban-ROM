.class public final Lcom/google/android/youtube/core/async/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/av;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/av;)V
    .registers 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/youtube/core/async/h;->a:Lcom/google/android/youtube/core/async/av;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/h;->b:Z

    if-nez v0, :cond_9

    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/async/h;->a:Lcom/google/android/youtube/core/async/av;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/av;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 35
    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/h;->b:Z

    if-nez v0, :cond_9

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/async/h;->a:Lcom/google/android/youtube/core/async/av;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/av;->a(Ljava/lang/Exception;)V

    .line 47
    :cond_9
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/h;->b:Z

    .line 25
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/h;->b:Z

    if-nez v0, :cond_9

    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/async/h;->a:Lcom/google/android/youtube/core/async/av;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/av;->d_()V

    .line 41
    :cond_9
    return-void
.end method
