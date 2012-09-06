.class public final Lcom/google/android/youtube/core/converter/http/ag;
.super Lcom/google/android/youtube/core/converter/http/ar;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ar;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 38
    const-string v0, "/feed"

    invoke-static {v0}, Lcom/google/android/youtube/core/converter/e;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ao;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ao;-><init>(Lcom/google/android/youtube/core/converter/http/ag;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/author/name"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/an;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/an;-><init>(Lcom/google/android/youtube/core/converter/http/ag;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/author/uri"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/am;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/am;-><init>(Lcom/google/android/youtube/core/converter/http/ag;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/category"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/al;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/al;-><init>(Lcom/google/android/youtube/core/converter/http/ag;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/updated"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ak;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ak;-><init>(Lcom/google/android/youtube/core/converter/http/ag;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/yt:groupId"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/aj;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/aj;-><init>(Lcom/google/android/youtube/core/converter/http/ag;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/yt:videoid"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ai;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ai;-><init>(Lcom/google/android/youtube/core/converter/http/ag;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/feed/entry/yt:username"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ah;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ah;-><init>(Lcom/google/android/youtube/core/converter/http/ag;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 108
    const-string v1, "/feed/entry/link"

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/google/android/youtube/core/converter/http/eg;->c(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;Z)V

    .line 110
    new-instance v2, Lcom/google/android/youtube/core/converter/http/ap;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ap;-><init>(Lcom/google/android/youtube/core/converter/http/ag;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    .line 127
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/ag;->b:Lcom/google/android/youtube/core/converter/c;

    .line 128
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/ag;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
