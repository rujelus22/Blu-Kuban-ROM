.class public final Lcom/google/android/youtube/core/converter/http/n;
.super Lcom/google/android/youtube/core/converter/http/ar;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 4
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ar;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 21
    invoke-static {}, Lcom/google/android/youtube/core/converter/e;->a()Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 22
    const-string v1, "/feed/entry/content"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/converter/http/de;->a(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/n;->b:Lcom/google/android/youtube/core/converter/c;

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/n;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
