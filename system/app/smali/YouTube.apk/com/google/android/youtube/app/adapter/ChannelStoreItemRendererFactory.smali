.class public final Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/List;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final e:Lcom/google/android/youtube/app/YouTubeApplication;

.field private final f:Lcom/google/android/youtube/core/Analytics;

.field private final g:Lcom/google/android/youtube/core/b/ae;

.field private final h:Lcom/google/android/youtube/app/a;

.field private final i:Lcom/google/android/youtube/core/d;

.field private final j:Lcom/google/android/youtube/app/adapter/s;

.field private final k:Ljava/util/Map;

.field private final l:Ljava/util/Map;

.field private final m:Lcom/google/android/youtube/app/ui/db;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/YouTubeApplication;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/app/ui/db;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->c:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->f:Lcom/google/android/youtube/core/Analytics;

    .line 85
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->g:Lcom/google/android/youtube/core/b/ae;

    .line 86
    iput-object p7, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->i:Lcom/google/android/youtube/core/d;

    .line 87
    iput-object p4, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 88
    iput-object p5, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->e:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 89
    iput-object p6, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->h:Lcom/google/android/youtube/app/a;

    .line 90
    new-instance v0, Lcom/google/android/youtube/app/adapter/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/adapter/s;-><init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->j:Lcom/google/android/youtube/app/adapter/s;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->k:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->l:Ljava/util/Map;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a:Landroid/os/Handler;

    .line 95
    iput-object p8, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->m:Lcom/google/android/youtube/app/ui/db;

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/app/adapter/s;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->j:Lcom/google/android/youtube/app/adapter/s;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->k:Ljava/util/Map;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->WORKING:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->k:Ljava/util/Map;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->UNSUBSCRIBE:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->l:Ljava/util/Map;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-static {p1}, Lcom/google/android/youtube/app/adapter/x;->b(Lcom/google/android/youtube/app/adapter/x;)Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    if-ne v0, p2, :cond_a

    .line 129
    invoke-static {p1}, Lcom/google/android/youtube/app/adapter/x;->a(Lcom/google/android/youtube/app/adapter/x;)Landroid/view/View;

    .line 133
    :cond_9
    return-void

    .line 131
    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/x;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/x;->a(Lcom/google/android/youtube/app/adapter/x;)Landroid/view/View;

    goto :goto_10
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->k:Ljava/util/Map;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;->SUBSCRIBE:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->l:Ljava/util/Map;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/app/YouTubeApplication;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->e:Lcom/google/android/youtube/app/YouTubeApplication;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->f:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->g:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->l:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->i:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/app/ui/db;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->m:Lcom/google/android/youtube/app/ui/db;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/app/a;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->h:Lcom/google/android/youtube/app/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/youtube/app/adapter/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/app/adapter/x;-><init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 100
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/core/model/UserProfile;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->g:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/youtube/app/adapter/u;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/youtube/app/adapter/u;-><init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/core/model/UserProfile;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/af;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/af;

    move-result-object v1

    invoke-interface {v0, p4, p5, v1}, Lcom/google/android/youtube/core/b/ae;->g(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 301
    return-void
.end method
