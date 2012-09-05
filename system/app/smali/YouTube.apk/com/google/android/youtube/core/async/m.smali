.class public final Lcom/google/android/youtube/core/async/m;
.super Lcom/google/android/youtube/core/async/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/l;-><init>(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/l;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 78
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v0, Lcom/google/android/youtube/core/async/n;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/n;-><init>(Lcom/google/android/youtube/core/async/m;Lcom/google/android/youtube/core/async/GDataRequest;)V

    return-object v0
.end method
