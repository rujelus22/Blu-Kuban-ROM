.class public final Lcom/google/android/youtube/core/async/v;
.super Lcom/google/android/youtube/core/async/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/s;-><init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ar;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/o;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 101
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v0, Lcom/google/android/youtube/core/async/w;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/w;-><init>(Lcom/google/android/youtube/core/async/v;Lcom/google/android/youtube/core/async/GDataRequest;)V

    return-object v0
.end method
