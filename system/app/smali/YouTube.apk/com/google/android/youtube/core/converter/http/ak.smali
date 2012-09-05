.class final Lcom/google/android/youtube/core/converter/http/ak;
.super Lcom/google/android/youtube/core/converter/http/ad;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ad;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 131
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method
