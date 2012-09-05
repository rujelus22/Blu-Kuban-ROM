.class final Lcom/google/android/youtube/core/async/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/google/android/youtube/core/async/t;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/t;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/youtube/core/async/u;->b:Lcom/google/android/youtube/core/async/t;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/u;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/async/u;->b:Lcom/google/android/youtube/core/async/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/t;->a(Lcom/google/android/youtube/core/async/t;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/u;->a:Ljava/lang/Exception;

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/core/async/u;->b:Lcom/google/android/youtube/core/async/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/t;->a(Lcom/google/android/youtube/core/async/t;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    return-void
.end method
