.class public final Lcom/google/android/youtube/core/converter/http/v;
.super Lcom/google/android/youtube/core/converter/http/ad;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 5
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ad;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 33
    const-string v0, "/feed"

    invoke-static {v0}, Lcom/google/android/youtube/core/converter/e;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ab;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ab;-><init>(Lcom/google/android/youtube/core/converter/http/v;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/author/name"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/aa;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/aa;-><init>(Lcom/google/android/youtube/core/converter/http/v;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/category"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/z;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/z;-><init>(Lcom/google/android/youtube/core/converter/http/v;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/updated"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/y;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/y;-><init>(Lcom/google/android/youtube/core/converter/http/v;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/yt:videoid"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/x;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/x;-><init>(Lcom/google/android/youtube/core/converter/http/v;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/yt:username"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/w;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/w;-><init>(Lcom/google/android/youtube/core/converter/http/v;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/v;->b:Lcom/google/android/youtube/core/converter/c;

    .line 91
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/v;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
