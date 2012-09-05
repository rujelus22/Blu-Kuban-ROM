.class public final Lcom/google/android/youtube/core/converter/http/cs;
.super Lcom/google/android/youtube/core/converter/http/ad;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 5
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ad;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    const-string v1, "/feed"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cu;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cu;-><init>(Lcom/google/android/youtube/core/converter/http/cs;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/title"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ct;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ct;-><init>(Lcom/google/android/youtube/core/converter/http/cs;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/cs;->b:Lcom/google/android/youtube/core/converter/c;

    .line 39
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/cs;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
