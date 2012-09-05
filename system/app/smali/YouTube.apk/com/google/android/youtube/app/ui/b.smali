.class public final Lcom/google/android/youtube/app/ui/b;
.super Lcom/google/android/youtube/core/ui/k;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/app/a/a;

.field private final b:Lcom/google/android/youtube/core/client/ad;

.field private final e:Lcom/google/android/youtube/core/client/af;

.field private final f:Lcom/google/android/youtube/core/async/g;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/a;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/client/af;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-interface {p4}, Lcom/google/android/youtube/core/client/ad;->u()Lcom/google/android/youtube/core/async/ad;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/k;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/e;)V

    .line 51
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/b;->a:Lcom/google/android/youtube/app/a/a;

    .line 52
    const-string v0, "gdataClient can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/b;->b:Lcom/google/android/youtube/core/client/ad;

    .line 53
    const-string v0, "imageClient can\'t be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/af;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/b;->e:Lcom/google/android/youtube/core/client/af;

    .line 55
    new-instance v0, Lcom/google/android/youtube/app/ui/c;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/c;-><init>(Lcom/google/android/youtube/app/ui/b;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/b;->f:Lcom/google/android/youtube/core/async/g;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/b;->g:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/b;->h:Ljava/util/concurrent/ConcurrentMap;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/b;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->h:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/b;)Lcom/google/android/youtube/core/async/g;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->f:Lcom/google/android/youtube/core/async/g;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/b;)Lcom/google/android/youtube/core/client/af;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->e:Lcom/google/android/youtube/core/client/af;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/b;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/b;)Lcom/google/android/youtube/app/a/a;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->a:Lcom/google/android/youtube/app/a/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/k;->a()V

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/i;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    goto :goto_9

    .line 66
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/b;->h:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 68
    return-void
.end method

.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 74
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v3, Lcom/google/android/youtube/core/model/Subscription$Type;->CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

    if-eq v2, v3, :cond_1c

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v3, Lcom/google/android/youtube/core/model/Subscription$Type;->USER:Lcom/google/android/youtube/core/model/Subscription$Type;

    if-ne v2, v3, :cond_4

    .line 76
    :cond_1c
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/b;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    .line 78
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    .line 79
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/b;->a:Lcom/google/android/youtube/app/a/a;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/app/a/a;->a(Landroid/net/Uri;)V

    .line 80
    new-instance v3, Lcom/google/android/youtube/app/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    invoke-direct {v3, p0, v0}, Lcom/google/android/youtube/app/ui/d;-><init>(Lcom/google/android/youtube/app/ui/b;Landroid/net/Uri;)V

    invoke-static {v3}, Lcom/google/android/youtube/core/async/i;->a(Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/i;

    move-result-object v0

    .line 82
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/b;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/b;->b:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3, v2, v0}, Lcom/google/android/youtube/core/client/ad;->e(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_4

    .line 86
    :cond_44
    return-void
.end method
