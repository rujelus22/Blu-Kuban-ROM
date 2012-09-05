.class final Lcom/google/android/youtube/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/core/async/g;

.field final synthetic c:Lcom/google/android/youtube/app/i;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/i;Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/youtube/app/k;->c:Lcom/google/android/youtube/app/i;

    iput-object p2, p0, Lcom/google/android/youtube/app/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/app/k;->b:Lcom/google/android/youtube/core/async/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 74
    check-cast p1, Lcom/google/android/a/e/a;

    iget-object v0, p0, Lcom/google/android/youtube/app/k;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 74
    check-cast p1, Lcom/google/android/a/e/a;

    check-cast p2, Lcom/google/android/a/e/c;

    invoke-virtual {p2}, Lcom/google/android/a/e/c;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/google/android/a/e/e;

    invoke-direct {v0, p2}, Lcom/google/android/a/e/e;-><init>(Lcom/google/android/a/e/c;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/a/e/e;->b(Ljava/lang/String;)Lcom/google/android/a/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/a/e/e;->a()Lcom/google/android/a/e/c;

    move-result-object p2

    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/k;->c:Lcom/google/android/youtube/app/i;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/app/i;Lcom/google/android/a/e/c;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/k;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
