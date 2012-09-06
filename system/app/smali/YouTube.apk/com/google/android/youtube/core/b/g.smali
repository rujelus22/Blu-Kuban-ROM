.class final Lcom/google/android/youtube/core/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/b/d;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/youtube/core/model/n;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/b/d;Ljava/lang/String;Lcom/google/android/youtube/core/model/n;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/youtube/core/b/g;->a:Lcom/google/android/youtube/core/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/google/android/youtube/core/b/g;->b:Ljava/lang/String;

    .line 252
    iput-object p3, p0, Lcom/google/android/youtube/core/b/g;->c:Lcom/google/android/youtube/core/model/n;

    .line 253
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 245
    const-string v0, "Error retrieving video for the ad"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/b/g;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/d;->b(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 245
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    if-eqz p2, :cond_81

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_81

    iget-object v0, p0, Lcom/google/android/youtube/core/b/g;->c:Lcom/google/android/youtube/core/model/n;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Privacy;->PUBLIC:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-ne v1, v2, :cond_25

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/n;->a()Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/o;->b()Lcom/google/android/youtube/core/model/n;

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/youtube/core/b/g;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/d;->d(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/player/an;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/bi;->h:Ljava/util/Set;

    invoke-interface {v0, p2, v1}, Lcom/google/android/youtube/core/player/an;->a(Lcom/google/android/youtube/core/model/Video;Ljava/util/Set;)Lcom/google/android/youtube/core/model/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/g;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/d;->e(Lcom/google/android/youtube/core/b/d;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v0, v0, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    :goto_3d
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

    iget-object v1, p0, Lcom/google/android/youtube/core/b/g;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/d;->b(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/l;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/b/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/b/g;->c:Lcom/google/android/youtube/core/model/n;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/n;->a()Lcom/google/android/youtube/core/model/o;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/model/o;->q(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/o;->b()Lcom/google/android/youtube/core/model/n;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6e
    return-void

    :cond_6f
    iget-object v0, v0, Lcom/google/android/youtube/core/model/t;->c:Lcom/google/android/youtube/core/model/Stream;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;
    :try_end_73
    .catch Lcom/google/android/youtube/core/player/MissingStreamException; {:try_start_25 .. :try_end_73} :catch_74

    goto :goto_3d

    :catch_74
    move-exception v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/g;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/d;->b(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/l;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/b/g;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_6e

    :cond_81
    iget-object v0, p0, Lcom/google/android/youtube/core/b/g;->a:Lcom/google/android/youtube/core/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/d;->b(Lcom/google/android/youtube/core/b/d;)Lcom/google/android/youtube/core/async/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6e
.end method
