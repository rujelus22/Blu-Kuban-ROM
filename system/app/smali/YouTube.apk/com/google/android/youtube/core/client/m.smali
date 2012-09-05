.class final Lcom/google/android/youtube/core/client/m;
.super Lcom/google/android/youtube/core/async/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/l;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/client/l;Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/google/android/youtube/core/client/m;->a:Lcom/google/android/youtube/core/client/l;

    invoke-direct {p0, p2, p3}, Lcom/google/android/youtube/core/async/l;-><init>(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/l;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 697
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/client/n;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/core/client/n;-><init>(Lcom/google/android/youtube/core/client/m;Ljava/lang/String;)V

    return-object v1
.end method
