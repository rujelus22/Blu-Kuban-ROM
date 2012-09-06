.class final Lcom/google/android/youtube/core/b/k;
.super Lcom/google/android/youtube/core/async/s;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/b/j;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/b/j;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    iput-object p1, p0, Lcom/google/android/youtube/core/b/k;->a:Lcom/google/android/youtube/core/b/j;

    invoke-direct {p0, p2, p3}, Lcom/google/android/youtube/core/async/s;-><init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/o;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 831
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/b/l;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/core/b/l;-><init>(Lcom/google/android/youtube/core/b/k;Ljava/lang/String;)V

    return-object v1
.end method
