.class public final Lcom/google/android/youtube/app/ui/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/youtube/core/b/ae;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/youtube/app/remote/at;

.field private final e:Lcom/google/android/youtube/app/remote/e;

.field private final f:Lcom/google/android/youtube/app/ui/cm;

.field private final g:Lcom/google/android/youtube/app/ui/cm;

.field private final h:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final i:Lcom/google/android/youtube/core/async/l;

.field private final j:Landroid/content/res/Resources;

.field private k:Lcom/google/android/youtube/app/remote/ap;

.field private l:Lcom/google/android/youtube/app/ui/cl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/e;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "context can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->a:Landroid/content/Context;

    .line 70
    const-string v0, "youTubeTvRemoteControl can not be null"

    invoke-static {p2, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/at;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->d:Lcom/google/android/youtube/app/remote/at;

    .line 72
    const-string v0, "atHomeRemoteControl can not be null"

    invoke-static {p3, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->e:Lcom/google/android/youtube/app/remote/e;

    .line 74
    const-string v0, "gDataClient can not be null"

    invoke-static {p4, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->b:Lcom/google/android/youtube/core/b/ae;

    .line 75
    const-string v0, "userAuthorizer can not be null"

    invoke-static {p6, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->j:Landroid/content/res/Resources;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->c:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/google/android/youtube/app/ui/cq;

    invoke-direct {v0, p0, p5, v1}, Lcom/google/android/youtube/app/ui/cq;-><init>(Lcom/google/android/youtube/app/ui/cj;Lcom/google/android/youtube/core/b/ag;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->i:Lcom/google/android/youtube/core/async/l;

    .line 84
    new-instance v0, Lcom/google/android/youtube/app/ui/cm;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/ui/cm;-><init>(Lcom/google/android/youtube/app/ui/cj;Lcom/google/android/youtube/app/remote/RemoteControl;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->f:Lcom/google/android/youtube/app/ui/cm;

    .line 85
    new-instance v0, Lcom/google/android/youtube/app/ui/cm;

    invoke-direct {v0, p0, p3}, Lcom/google/android/youtube/app/ui/cm;-><init>(Lcom/google/android/youtube/app/ui/cj;Lcom/google/android/youtube/app/remote/RemoteControl;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->g:Lcom/google/android/youtube/app/ui/cm;

    .line 87
    new-instance v0, Lcom/google/android/youtube/app/ui/cl;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/cl;-><init>(Lcom/google/android/youtube/app/ui/cj;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->l:Lcom/google/android/youtube/app/ui/cl;

    .line 89
    new-instance v0, Lcom/google/android/youtube/app/ui/cp;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/cp;-><init>(Lcom/google/android/youtube/app/ui/cj;B)V

    .line 90
    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cp;->a()V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cj;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cj;Lcom/google/android/youtube/app/remote/ap;)Lcom/google/android/youtube/app/remote/ap;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cj;->k:Lcom/google/android/youtube/app/remote/ap;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/app/ui/cl;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->l:Lcom/google/android/youtube/app/ui/cl;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->h:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/core/async/l;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->i:Lcom/google/android/youtube/core/async/l;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->b:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/cj;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/ui/cj;)Ljava/lang/CharSequence;
    .registers 6
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->k:Lcom/google/android/youtube/app/remote/ap;

    if-nez v0, :cond_c

    const-string v0, "We should be connected to a screen, but the value is null"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->j:Landroid/content/res/Resources;

    const v1, 0x7f0b0216

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/cj;->k:Lcom/google/android/youtube/app/remote/ap;

    invoke-interface {v4}, Lcom/google/android/youtube/app/remote/ap;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_b
.end method

.method static synthetic h(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/app/ui/cm;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cj;->f:Lcom/google/android/youtube/app/ui/cm;

    return-object v0
.end method
