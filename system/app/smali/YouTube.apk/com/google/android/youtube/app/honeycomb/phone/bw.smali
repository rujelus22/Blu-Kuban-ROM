.class public final Lcom/google/android/youtube/app/honeycomb/phone/bw;
.super Lcom/google/android/youtube/app/honeycomb/phone/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/app/prefetch/f;
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/content/res/Resources;

.field private final d:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final e:Lcom/google/android/youtube/core/b/ag;

.field private final f:Lcom/google/android/youtube/core/b/ai;

.field private final g:Lcom/google/android/youtube/core/utils/k;

.field private final h:Lcom/google/android/youtube/app/prefetch/d;

.field private final i:Lcom/google/android/youtube/core/j;

.field private final j:Lcom/google/android/youtube/app/YouTubePlatformUtil;

.field private final k:Lcom/google/android/youtube/core/d;

.field private final l:Lcom/google/android/youtube/core/Analytics;

.field private final m:Lcom/google/android/youtube/core/b/ae;

.field private final n:Landroid/content/SharedPreferences;

.field private final o:Lcom/google/android/youtube/app/a;

.field private final p:Lcom/google/android/youtube/app/ui/av;

.field private final q:Landroid/view/ViewGroup;

.field private final r:Lcom/google/android/youtube/core/ui/PagedListView;

.field private final s:Lcom/google/android/youtube/app/honeycomb/phone/by;

.field private t:Landroid/view/View;

.field private u:Z

.field private v:Lcom/google/android/youtube/app/ui/br;

.field private w:Lcom/google/android/youtube/app/ui/e;

.field private x:Lcom/google/android/youtube/app/adapter/ba;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Lcom/google/android/youtube/app/honeycomb/phone/by;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/p;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    .line 88
    const-string v0, "listener may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/phone/by;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->s:Lcom/google/android/youtube/app/honeycomb/phone/by;

    .line 89
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->b:Landroid/view/LayoutInflater;

    .line 91
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->b:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v1

    if-eqz v1, :cond_96

    const v1, 0x7f040077

    move v2, v1

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->n()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->q:Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->c:Landroid/content/res/Resources;

    .line 94
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 95
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->e:Lcom/google/android/youtube/core/b/ag;

    .line 96
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->f:Lcom/google/android/youtube/core/b/ai;

    .line 97
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->g:Lcom/google/android/youtube/core/utils/k;

    .line 98
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->w()Lcom/google/android/youtube/app/prefetch/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->h:Lcom/google/android/youtube/app/prefetch/d;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->k:Lcom/google/android/youtube/core/d;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->l:Lcom/google/android/youtube/core/Analytics;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->i:Lcom/google/android/youtube/core/j;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->j:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->m:Lcom/google/android/youtube/core/b/ae;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->n:Landroid/content/SharedPreferences;

    .line 105
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->o:Lcom/google/android/youtube/app/a;

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->q:Landroid/view/ViewGroup;

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->r:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 107
    new-instance v0, Lcom/google/android/youtube/app/ui/av;

    invoke-direct {v0}, Lcom/google/android/youtube/app/ui/av;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->p:Lcom/google/android/youtube/app/ui/av;

    .line 108
    return-void

    .line 91
    :cond_96
    const v1, 0x7f040089

    move v2, v1

    goto :goto_25
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/core/ui/PagedListView;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->r:Lcom/google/android/youtube/core/ui/PagedListView;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/bw;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->u:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/app/YouTubePlatformUtil;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->j:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/bw;)V
    .registers 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->l()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/app/ui/av;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->p:Lcom/google/android/youtube/app/ui/av;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->l:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/phone/bw;)Lcom/google/android/youtube/app/a;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->o:Lcom/google/android/youtube/app/a;

    return-object v0
.end method

.method private l()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 230
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->u:Z

    if-nez v0, :cond_6

    .line 246
    :goto_5
    return-void

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->t:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->q:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f04008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->t:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->q:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->t:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->t:Landroid/view/View;

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 241
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->i:Lcom/google/android/youtube/core/j;

    invoke-interface {v1}, Lcom/google/android/youtube/core/j;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->r:Lcom/google/android/youtube/core/ui/PagedListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->t:Landroid/view/View;

    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method private m()V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->v:Lcom/google/android/youtube/app/ui/br;

    if-eqz v1, :cond_16

    .line 251
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->v:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 253
    :cond_16
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/p;->a(Landroid/content/res/Configuration;)V

    .line 225
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->m()V

    .line 226
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->l()V

    .line 227
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->w:Lcom/google/android/youtube/app/ui/e;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->m:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->j(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/e;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 212
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    return-void
.end method

.method public final b()V
    .registers 9

    .prologue
    const v7, 0x7f0a0056

    .line 112
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/p;->b()V

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->m:Lcom/google/android/youtube/core/b/ae;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->e:Lcom/google/android/youtube/core/b/ag;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->f:Lcom/google/android/youtube/core/b/ai;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->g:Lcom/google/android/youtube/core/utils/k;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->h:Lcom/google/android/youtube/app/prefetch/d;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->i:Lcom/google/android/youtube/core/j;

    invoke-static/range {v0 .. v6}, Lcom/google/android/youtube/app/adapter/bb;->b(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->x:Lcom/google/android/youtube/app/adapter/ba;

    .line 138
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->x:Lcom/google/android/youtube/app/adapter/ba;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->v:Lcom/google/android/youtube/app/ui/br;

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->v:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->c:Landroid/content/res/Resources;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->c:Landroid/content/res/Resources;

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->c:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 144
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bw;->m()V

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->r:Lcom/google/android/youtube/core/ui/PagedListView;

    const v1, 0x7f0b010e

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setEmptyText(I)V

    .line 148
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/bx;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->r:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->v:Lcom/google/android/youtube/app/ui/br;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->m:Lcom/google/android/youtube/core/b/ae;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->k:Lcom/google/android/youtube/core/d;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/honeycomb/phone/bx;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/bw;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Z)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->w:Lcom/google/android/youtube/app/ui/e;

    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->w:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/e;->d()V

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 198
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->h:Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/prefetch/d;->a(Lcom/google/android/youtube/app/prefetch/f;)V

    .line 203
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->c:Landroid/content/res/Resources;

    const v1, 0x7f0b015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 216
    return-void
.end method

.method public final i()V
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->h:Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/prefetch/d;->b(Lcom/google/android/youtube/app/prefetch/f;)V

    .line 208
    return-void
.end method

.method public final o()V
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->x:Lcom/google/android/youtube/app/adapter/ba;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/ba;->notifyDataSetChanged()V

    .line 257
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bw;->s:Lcom/google/android/youtube/app/honeycomb/phone/by;

    invoke-interface {v0}, Lcom/google/android/youtube/app/honeycomb/phone/by;->a()V

    .line 266
    return-void
.end method
