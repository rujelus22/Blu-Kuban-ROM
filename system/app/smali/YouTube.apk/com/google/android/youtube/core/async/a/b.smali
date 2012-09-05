.class public final Lcom/google/android/youtube/core/async/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/client/ad;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    if-nez p2, :cond_17

    .line 41
    invoke-interface {p0}, Lcom/google/android/youtube/core/client/ad;->e()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    .line 42
    invoke-interface {p0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    .line 49
    :goto_e
    new-instance v2, Lcom/google/android/youtube/core/async/a/e;

    invoke-direct {v2, v0, v1}, Lcom/google/android/youtube/core/async/a/e;-><init>(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 50
    invoke-virtual {v2, p3}, Lcom/google/android/youtube/core/async/a/e;->a(I)V

    .line 52
    return-object v2

    .line 44
    :cond_17
    invoke-interface {p0}, Lcom/google/android/youtube/core/client/ad;->f()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    .line 45
    invoke-interface {p0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    goto :goto_e
.end method

.method public static a(Lcom/google/android/youtube/core/client/ad;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/client/ad;Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/youtube/core/client/ad;Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/youtube/core/async/a/c;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/youtube/core/async/a/c;-><init>(Ljava/util/List;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 90
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/async/a/c;->a(I)V

    .line 92
    return-object v0
.end method
