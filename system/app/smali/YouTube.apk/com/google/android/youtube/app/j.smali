.class final Lcom/google/android/youtube/app/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ad;


# instance fields
.field final synthetic a:Lcom/google/android/a/a/d/e;

.field final synthetic b:Lcom/google/android/youtube/app/i;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/i;Lcom/google/android/a/a/d/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/youtube/app/j;->b:Lcom/google/android/youtube/app/i;

    iput-object p2, p0, Lcom/google/android/youtube/app/j;->a:Lcom/google/android/a/a/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    check-cast p1, Lcom/google/android/a/e/a;

    iget-object v0, p0, Lcom/google/android/youtube/app/j;->a:Lcom/google/android/a/a/d/e;

    invoke-virtual {v0, p1}, Lcom/google/android/a/a/d/e;->a(Lcom/google/android/a/e/a;)Lcom/google/android/a/e/c;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    return-void

    :cond_e
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_d
.end method
