.class public final Lcom/google/android/youtube/core/converter/http/ar;
.super Lcom/google/android/youtube/core/converter/http/ad;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ad;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 21
    const-string v0, "/feed"

    invoke-static {v0}, Lcom/google/android/youtube/core/converter/e;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 22
    const-string v1, "/feed"

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/converter/http/at;->a(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;Z)V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/ar;->b:Lcom/google/android/youtube/core/converter/c;

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/ar;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
