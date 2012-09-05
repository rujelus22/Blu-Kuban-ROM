.class final Lcom/google/android/youtube/core/client/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/e;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/youtube/core/model/o;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/client/e;Ljava/lang/String;Lcom/google/android/youtube/core/model/o;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/youtube/core/client/g;->a:Lcom/google/android/youtube/core/client/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p2, p0, Lcom/google/android/youtube/core/client/g;->b:Ljava/lang/String;

    .line 272
    iput-object p3, p0, Lcom/google/android/youtube/core/client/g;->c:Lcom/google/android/youtube/core/model/o;

    .line 273
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 265
    const-string v0, "Error retrieving video streams for the ad"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/client/g;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->b(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 265
    check-cast p2, Lcom/google/android/youtube/core/model/u;

    iget-object v0, p0, Lcom/google/android/youtube/core/client/g;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/e;->d(Lcom/google/android/youtube/core/client/e;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p2, Lcom/google/android/youtube/core/model/u;->b:Lcom/google/android/youtube/core/model/Stream;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    :goto_e
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "splay"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dnc"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/g;->a:Lcom/google/android/youtube/core/client/e;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/e;->b(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/client/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/client/g;->c:Lcom/google/android/youtube/core/model/o;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/o;->a()Lcom/google/android/youtube/core/model/p;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/model/p;->n(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/p;->b()Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_40
    iget-object v0, p2, Lcom/google/android/youtube/core/model/u;->c:Lcom/google/android/youtube/core/model/Stream;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    goto :goto_e
.end method
