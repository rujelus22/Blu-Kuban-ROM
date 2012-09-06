.class public final Lcom/google/android/youtube/core/async/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/youtube/core/b/ae;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    if-nez p2, :cond_17

    .line 41
    invoke-interface {p0}, Lcom/google/android/youtube/core/b/ae;->g()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    .line 42
    invoke-interface {p0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    .line 49
    :goto_e
    new-instance v2, Lcom/google/android/youtube/core/async/a/e;

    invoke-direct {v2, v0, v1}, Lcom/google/android/youtube/core/async/a/e;-><init>(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 50
    invoke-virtual {v2, p3}, Lcom/google/android/youtube/core/async/a/e;->a(I)V

    .line 52
    return-object v2

    .line 44
    :cond_17
    invoke-interface {p0}, Lcom/google/android/youtube/core/b/ae;->h()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    .line 45
    invoke-interface {p0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    goto :goto_e
.end method

.method public static a(Lcom/google/android/youtube/core/b/ae;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 167
    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/youtube/core/b/ae;Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/a/a;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/youtube/core/async/a/c;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/youtube/core/async/a/c;-><init>(Ljava/util/List;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 128
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/async/a/c;->a(I)V

    .line 130
    return-object v0
.end method
