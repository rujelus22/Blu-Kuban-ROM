.class public final Lcom/google/android/youtube/core/converter/http/bu;
.super Lcom/google/android/youtube/core/converter/http/ad;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 5
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ad;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 30
    invoke-static {}, Lcom/google/android/youtube/core/converter/e;->a()Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cb;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cb;-><init>(Lcom/google/android/youtube/core/converter/http/bu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/category"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ca;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ca;-><init>(Lcom/google/android/youtube/core/converter/http/bu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/content"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/bz;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/bz;-><init>(Lcom/google/android/youtube/core/converter/http/bu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/yt:username"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/by;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/by;-><init>(Lcom/google/android/youtube/core/converter/http/bu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/yt:playlistTitle"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/bx;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/bx;-><init>(Lcom/google/android/youtube/core/converter/http/bu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/yt:queryString"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/bw;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/bw;-><init>(Lcom/google/android/youtube/core/converter/http/bu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/link"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/bv;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/bv;-><init>(Lcom/google/android/youtube/core/converter/http/bu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bu;->b:Lcom/google/android/youtube/core/converter/c;

    .line 99
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/bu;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
