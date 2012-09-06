.class public final Lcom/google/android/youtube/core/converter/http/br;
.super Lcom/google/android/youtube/core/converter/http/ar;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 3
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ar;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 21
    invoke-static {}, Lcom/google/android/youtube/core/converter/e;->a()Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/google/android/youtube/core/converter/http/bt;->a(Lcom/google/android/youtube/core/converter/d;)V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/br;->b:Lcom/google/android/youtube/core/converter/c;

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/br;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
