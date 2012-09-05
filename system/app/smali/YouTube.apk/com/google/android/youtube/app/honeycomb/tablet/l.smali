.class public final Lcom/google/android/youtube/app/honeycomb/tablet/l;
.super Lcom/google/android/youtube/app/honeycomb/tablet/an;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final h:Lcom/google/android/youtube/app/v;

.field private final i:Lcom/google/android/youtube/core/client/af;

.field private final j:Lcom/google/android/youtube/core/client/ag;

.field private final k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private final l:Lcom/google/android/youtube/core/e;

.field private m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

.field private n:Lcom/google/android/youtube/app/ui/cv;

.field private o:Lcom/google/android/youtube/app/ah;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v4, 0x0

    const-string v5, "yt_home"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/tablet/an;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->i:Lcom/google/android/youtube/core/client/af;

    .line 57
    new-instance v0, Lcom/google/android/youtube/app/v;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/v;-><init>(Lcom/google/android/youtube/core/client/ad;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->h:Lcom/google/android/youtube/app/v;

    .line 58
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->j:Lcom/google/android/youtube/core/client/ag;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 60
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->s()Lcom/google/android/youtube/app/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->o:Lcom/google/android/youtube/app/ah;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->l:Lcom/google/android/youtube/core/e;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/l;)Lcom/google/android/youtube/app/ah;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->o:Lcom/google/android/youtube/app/ah;

    return-object v0
.end method

.method private e()V
    .registers 5

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->n:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 67
    const v0, 0x7f04001e

    return v0
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f09004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    .line 74
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->d:Lcom/google/android/youtube/app/o;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->g:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->h:Lcom/google/android/youtube/app/v;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/v;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    invoke-virtual {v6}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->a()I

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/google/android/youtube/app/a/x;->a(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;I)Lcom/google/android/youtube/app/a/x;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->h:Lcom/google/android/youtube/app/v;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->i:Lcom/google/android/youtube/core/client/af;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->j:Lcom/google/android/youtube/core/client/ag;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v9

    sget-object v10, Lcom/google/android/youtube/core/Analytics$VideoCategory;->HomeFeed:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v11, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_DEFAULT:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    iget-object v12, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->l:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/youtube/app/honeycomb/tablet/m;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/l;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->n:Lcom/google/android/youtube/app/ui/cv;

    .line 108
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->n:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->k:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 135
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/l;->e()V

    .line 143
    return-void
.end method

.method protected final d()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->k()V

    .line 130
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d()V

    .line 131
    return-void
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/l;->e()V

    .line 139
    return-void
.end method

.method protected final h_()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->n:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->a()V

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->c()V

    .line 124
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h_()V

    .line 125
    return-void
.end method

.method protected final i_()V
    .registers 4

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i_()V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->m:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;->d()V

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V

    .line 117
    return-void
.end method
