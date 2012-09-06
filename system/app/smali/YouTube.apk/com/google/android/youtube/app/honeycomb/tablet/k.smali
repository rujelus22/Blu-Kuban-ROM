.class public final Lcom/google/android/youtube/app/honeycomb/tablet/k;
.super Lcom/google/android/youtube/app/honeycomb/tablet/ao;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final h:Lcom/google/android/youtube/app/b;

.field private final i:Lcom/google/android/youtube/core/b/ag;

.field private final j:Lcom/google/android/youtube/core/b/ai;

.field private final k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private final l:Lcom/google/android/youtube/core/d;

.field private m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

.field private n:Lcom/google/android/youtube/app/ui/ec;

.field private o:Lcom/google/android/youtube/app/YouTubePlatformUtil;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v4, 0x0

    const-string v5, "yt_home"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->i:Lcom/google/android/youtube/core/b/ag;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->y()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/google/android/youtube/app/b;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/app/b;-><init>(Lcom/google/android/youtube/core/b/ae;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->h:Lcom/google/android/youtube/app/b;

    .line 58
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->j:Lcom/google/android/youtube/core/b/ai;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 60
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->o:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->l:Lcom/google/android/youtube/core/d;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/k;)Lcom/google/android/youtube/app/YouTubePlatformUtil;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->o:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    return-object v0
.end method

.method private g()V
    .registers 5

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->n:Lcom/google/android/youtube/app/ui/ec;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 67
    const v0, 0x7f040036

    return v0
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f08007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    .line 74
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/l;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->d:Lcom/google/android/youtube/app/a;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->g:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->h:Lcom/google/android/youtube/app/b;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    invoke-virtual {v6}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->k()I

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/google/android/youtube/app/adapter/bt;->a(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;I)Lcom/google/android/youtube/app/adapter/bt;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->h:Lcom/google/android/youtube/app/b;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->i:Lcom/google/android/youtube/core/b/ag;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->j:Lcom/google/android/youtube/core/b/ai;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v9

    sget-object v10, Lcom/google/android/youtube/core/Analytics$VideoCategory;->HomeFeed:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v11, Lcom/google/android/youtube/app/m;->z:Lcom/google/android/youtube/core/b/aj;

    iget-object v12, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->l:Lcom/google/android/youtube/core/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/youtube/app/honeycomb/tablet/l;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/k;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->n:Lcom/google/android/youtube/app/ui/ec;

    .line 108
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->n:Lcom/google/android/youtube/app/ui/ec;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/ec;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 135
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/k;->g()V

    .line 143
    return-void
.end method

.method protected final b()V
    .registers 4

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b()V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->m()V

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 117
    return-void
.end method

.method protected final c()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->n:Lcom/google/android/youtube/app/ui/ec;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ec;->c()V

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->l()V

    .line 124
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c()V

    .line 125
    return-void
.end method

.method protected final d()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/k;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->n()V

    .line 130
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->d()V

    .line 131
    return-void
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/k;->g()V

    .line 139
    return-void
.end method
