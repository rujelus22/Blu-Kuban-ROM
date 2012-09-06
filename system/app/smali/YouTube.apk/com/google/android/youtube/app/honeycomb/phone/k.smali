.class public final Lcom/google/android/youtube/app/honeycomb/phone/k;
.super Lcom/google/android/youtube/app/honeycomb/phone/bt;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/app/ui/cv;


# instance fields
.field private A:Lcom/google/android/youtube/app/ui/i;

.field private B:Lcom/google/android/youtube/app/ui/e;

.field private C:Lcom/google/android/youtube/app/ui/SubscribeHelper;

.field private final D:I

.field private final E:I

.field private final F:Lcom/google/android/youtube/app/ui/db;

.field private G:Z

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Landroid/content/res/Resources;

.field private final e:Lcom/google/android/youtube/core/b/ag;

.field private final f:Lcom/google/android/youtube/core/b/ai;

.field private final g:Lcom/google/android/youtube/core/d;

.field private final h:Lcom/google/android/youtube/app/prefetch/d;

.field private final i:Lcom/google/android/youtube/core/j;

.field private final j:Lcom/google/android/youtube/core/utils/k;

.field private final k:Lcom/google/android/youtube/core/b/ae;

.field private final l:Lcom/google/android/youtube/core/async/ar;

.field private final m:Lcom/google/android/youtube/core/Analytics;

.field private final n:Lcom/google/android/youtube/app/a;

.field private final o:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private p:Lcom/google/android/youtube/app/ui/br;

.field private q:Lcom/google/android/youtube/app/ui/br;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Lcom/google/android/youtube/core/model/UserProfile;

.field private w:Landroid/view/View;

.field private x:Lcom/google/android/youtube/app/ui/i;

.field private y:Lcom/google/android/youtube/app/ui/eh;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Landroid/net/Uri;Lcom/google/android/youtube/app/ui/db;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/bt;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    .line 109
    const-string v0, "channeluri cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->b:Landroid/net/Uri;

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->c:Landroid/view/LayoutInflater;

    .line 112
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 113
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->d:Landroid/content/res/Resources;

    .line 114
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->e:Lcom/google/android/youtube/core/b/ag;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->f:Lcom/google/android/youtube/core/b/ai;

    .line 116
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->j:Lcom/google/android/youtube/core/utils/k;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->w()Lcom/google/android/youtube/app/prefetch/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->h:Lcom/google/android/youtube/app/prefetch/d;

    .line 118
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->i:Lcom/google/android/youtube/core/j;

    .line 119
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->k:Lcom/google/android/youtube/core/b/ae;

    .line 120
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->j()Lcom/google/android/youtube/core/async/ar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->l:Lcom/google/android/youtube/core/async/ar;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->g:Lcom/google/android/youtube/core/d;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->m:Lcom/google/android/youtube/core/Analytics;

    .line 123
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->n:Lcom/google/android/youtube/app/a;

    .line 124
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->o:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 125
    new-instance v0, Lcom/google/android/youtube/app/ui/SubscribeHelper;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->m:Lcom/google/android/youtube/core/Analytics;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->o:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->k:Lcom/google/android/youtube/core/b/ae;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->g:Lcom/google/android/youtube/core/d;

    const-string v7, "ChannelLayer"

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/ui/SubscribeHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/app/ui/cv;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->C:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    .line 128
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->D:I

    .line 129
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->E:I

    .line 131
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->F:Lcom/google/android/youtube/app/ui/db;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->G:Z

    .line 133
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/util/Pair;
    .registers 8
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 257
    new-instance v0, Lcom/google/android/youtube/app/ui/i;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->k:Lcom/google/android/youtube/core/b/ae;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->e:Lcom/google/android/youtube/core/b/ag;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->g:Lcom/google/android/youtube/core/d;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/i;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V

    .line 260
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    if-eqz v1, :cond_20

    .line 261
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/i;->a(Lcom/google/android/youtube/core/model/UserProfile;)V

    .line 263
    :cond_20
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->m:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/k;Lcom/google/android/youtube/core/model/UserProfile;)Lcom/google/android/youtube/core/model/UserProfile;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 267
    const v0, 0x7f080045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->t:Landroid/view/View;

    .line 268
    const v0, 0x7f080074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/youtube/app/ui/dl;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-direct {v1, v2}, Lcom/google/android/youtube/app/ui/dl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 272
    :cond_24
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->s:Landroid/widget/ProgressBar;

    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->s()V

    .line 275
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/k;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/a;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->n:Lcom/google/android/youtube/app/a;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    if-eqz v0, :cond_18

    .line 287
    const v0, 0x7f080075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->u:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->u:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_18
    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/core/model/UserProfile;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/ui/SubscribeHelper;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->C:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/ui/eh;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->y:Lcom/google/android/youtube/app/ui/eh;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/phone/k;)V
    .registers 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->q()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/youtube/app/honeycomb/phone/k;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->w:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/ui/i;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->x:Lcom/google/android/youtube/app/ui/i;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/ui/e;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->B:Lcom/google/android/youtube/app/ui/e;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/honeycomb/phone/k;)V
    .registers 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->r()V

    return-void
.end method

.method static synthetic k(Lcom/google/android/youtube/app/honeycomb/phone/k;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->z:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/ui/i;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->A:Lcom/google/android/youtube/app/ui/i;

    return-object v0
.end method

.method private p()V
    .registers 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->k:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/phone/n;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/youtube/app/honeycomb/phone/n;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/k;B)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 145
    return-void
.end method

.method private q()V
    .registers 6

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->y:Lcom/google/android/youtube/app/ui/eh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserProfile;->uploadsUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 193
    return-void
.end method

.method private r()V
    .registers 6

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->B:Lcom/google/android/youtube/app/ui/e;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->k:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserProfile;->activityUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/e;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 252
    return-void
.end method

.method private s()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->C:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c()Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    move-result-object v0

    .line 337
    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/m;->a:[I

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_9a

    .line 380
    :cond_15
    :goto_15
    return-void

    .line 339
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->t:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 340
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 342
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_3f

    .line 343
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->D:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    const v1, 0x7f0b0172

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 347
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :cond_3f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->s:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_15

    .line 350
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_15

    .line 354
    :pswitch_49
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->t:Landroid/view/View;

    if-eqz v0, :cond_52

    .line 355
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 357
    :cond_52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_72

    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    const v1, 0x7f0b0168

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    const v1, 0x7f020069

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 362
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    :cond_72
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->s:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_15

    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_15

    .line 369
    :pswitch_7c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->t:Landroid/view/View;

    if-eqz v0, :cond_85

    .line 370
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 372
    :cond_85
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_8f

    .line 373
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->r:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    :cond_8f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->s:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_15

    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_15

    .line 337
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_49
        :pswitch_7c
    .end packed-switch
.end method

.method private t()V
    .registers 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->p:Lcom/google/android/youtube/app/ui/br;

    if-eqz v1, :cond_16

    .line 419
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->p:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 421
    :cond_16
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->q:Lcom/google/android/youtube/app/ui/br;

    if-eqz v1, :cond_1f

    .line 422
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->q:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 424
    :cond_1f
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/ui/PagedListView;)Lcom/google/android/youtube/core/a/a;
    .registers 15
    .parameter

    .prologue
    const v9, 0x7f0a0056

    const/4 v6, 0x0

    .line 149
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->e:Lcom/google/android/youtube/core/b/ag;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->f:Lcom/google/android/youtube/core/b/ai;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->j:Lcom/google/android/youtube/core/utils/k;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->h:Lcom/google/android/youtube/app/prefetch/d;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->i:Lcom/google/android/youtube/core/j;

    new-instance v7, Lcom/google/android/youtube/app/adapter/bw;

    invoke-direct {v7, v1}, Lcom/google/android/youtube/app/adapter/bw;-><init>(Landroid/content/Context;)V

    invoke-interface {v5}, Lcom/google/android/youtube/core/j;->a()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/app/adapter/bw;->a(Landroid/graphics/Typeface;)V

    invoke-static {v1, v0, v4}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;)Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

    move-result-object v8

    new-instance v0, Lcom/google/android/youtube/app/adapter/f;

    invoke-interface {v5, v1}, Lcom/google/android/youtube/core/j;->c(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/adapter/f;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;ZIZ)V

    new-instance v2, Lcom/google/android/youtube/app/adapter/ab;

    invoke-direct {v2}, Lcom/google/android/youtube/app/adapter/ab;-><init>()V

    invoke-virtual {v2, v7}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v0

    new-instance v12, Lcom/google/android/youtube/app/adapter/ba;

    const v2, 0x7f040025

    invoke-direct {v12, v1, v2, v0}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->a(Landroid/view/ViewGroup;)Landroid/util/Pair;

    move-result-object v1

    .line 157
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->w:Landroid/view/View;

    .line 158
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/app/ui/i;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->x:Lcom/google/android/youtube/app/ui/i;

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->w:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/ui/PagedListView;->a(Landroid/view/View;)V

    .line 161
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-direct {v0, v1, v12}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->p:Lcom/google/android/youtube/app/ui/br;

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->p:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->d:Landroid/content/res/Resources;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->d:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->d:Landroid/content/res/Resources;

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->d:Landroid/content/res/Resources;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 167
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->t()V

    .line 169
    new-instance v0, Lcom/google/android/youtube/app/ui/eh;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->p:Lcom/google/android/youtube/app/ui/br;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->l:Lcom/google/android/youtube/core/async/ar;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->g:Lcom/google/android/youtube/core/d;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->n:Lcom/google/android/youtube/app/a;

    sget-object v9, Lcom/google/android/youtube/app/m;->c:Lcom/google/android/youtube/core/b/aj;

    iget-object v10, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->m:Lcom/google/android/youtube/core/Analytics;

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelUploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object v2, p1

    move v8, v6

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->y:Lcom/google/android/youtube/app/ui/eh;

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    if-eqz v0, :cond_ad

    .line 183
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->q()V

    .line 187
    :goto_ac
    return-object v12

    .line 185
    :cond_ad
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->y:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/eh;->e()V

    goto :goto_ac
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    if-eqz v0, :cond_a

    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->C:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a()V

    .line 283
    :goto_9
    return-void

    .line 281
    :cond_a
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->p()V

    goto :goto_9
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->a(Landroid/content/res/Configuration;)V

    .line 413
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->t()V

    .line 414
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 384
    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    if-eq p1, v1, :cond_9

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->NOT_SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    if-ne p1, v1, :cond_e

    .line 385
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->G:Z

    .line 386
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->G:Z

    move v0, v1

    .line 388
    :cond_e
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->s()V

    .line 389
    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->WORKING:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    if-ne p1, v1, :cond_16

    .line 399
    :cond_15
    :goto_15
    return-void

    .line 392
    :cond_16
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->F:Lcom/google/android/youtube/app/ui/db;

    if-eqz v0, :cond_15

    .line 393
    sget-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    if-ne p1, v0, :cond_2c

    .line 394
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->F:Lcom/google/android/youtube/app/ui/db;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->C:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->d()Lcom/google/android/youtube/core/model/Subscription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/ui/db;->a(Lcom/google/android/youtube/core/model/Subscription;)V

    goto :goto_15

    .line 395
    :cond_2c
    sget-object v0, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->NOT_SUBSCRIBED:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    if-ne p1, v0, :cond_15

    .line 396
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->F:Lcom/google/android/youtube/app/ui/db;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/ui/db;->a(Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected final b(Lcom/google/android/youtube/core/ui/PagedListView;)Lcom/google/android/youtube/core/a/a;
    .registers 12
    .parameter

    .prologue
    const v9, 0x7f0a0056

    .line 197
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->e:Lcom/google/android/youtube/core/b/ag;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->f:Lcom/google/android/youtube/core/b/ai;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->j:Lcom/google/android/youtube/core/utils/k;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->h:Lcom/google/android/youtube/app/prefetch/d;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->i:Lcom/google/android/youtube/core/j;

    new-instance v7, Lcom/google/android/youtube/app/adapter/bw;

    invoke-direct {v7, v1}, Lcom/google/android/youtube/app/adapter/bw;-><init>(Landroid/content/Context;)V

    invoke-interface {v5}, Lcom/google/android/youtube/core/j;->a()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/youtube/app/adapter/bw;->a(Landroid/graphics/Typeface;)V

    invoke-static {v1, v0, v4}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;)Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

    move-result-object v8

    new-instance v0, Lcom/google/android/youtube/app/adapter/f;

    invoke-interface {v5, v1}, Lcom/google/android/youtube/core/j;->c(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/adapter/f;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/app/prefetch/d;ZIZ)V

    new-instance v2, Lcom/google/android/youtube/app/adapter/ab;

    invoke-direct {v2}, Lcom/google/android/youtube/app/adapter/ab;-><init>()V

    invoke-virtual {v2, v7}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/app/adapter/ab;->a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/app/adapter/ah;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/youtube/app/adapter/ah;-><init>(Landroid/content/res/Resources;Lcom/google/android/youtube/app/adapter/bf;)V

    new-instance v8, Lcom/google/android/youtube/app/adapter/ba;

    const v0, 0x7f040024

    invoke-direct {v8, v1, v0, v2}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->a(Landroid/view/ViewGroup;)Landroid/util/Pair;

    move-result-object v1

    .line 205
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->z:Landroid/view/View;

    .line 206
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/app/ui/i;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->A:Lcom/google/android/youtube/app/ui/i;

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->z:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/ui/PagedListView;->a(Landroid/view/View;)V

    .line 209
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-direct {v0, v1, v8}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->q:Lcom/google/android/youtube/app/ui/br;

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->q:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->d:Landroid/content/res/Resources;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->d:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->d:Landroid/content/res/Resources;

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->d:Landroid/content/res/Resources;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 216
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->t()V

    .line 218
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/l;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->q:Lcom/google/android/youtube/app/ui/br;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->k:Lcom/google/android/youtube/core/b/ae;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->g:Lcom/google/android/youtube/core/d;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/honeycomb/phone/l;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/k;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Z)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->B:Lcom/google/android/youtube/app/ui/e;

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    if-eqz v0, :cond_af

    .line 242
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->r()V

    .line 246
    :goto_ae
    return-object v8

    .line 244
    :cond_af
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->B:Lcom/google/android/youtube/app/ui/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/e;->e()V

    goto :goto_ae
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->b()V

    .line 138
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->p()V

    .line 139
    return-void
.end method

.method protected final l()V
    .registers 2

    .prologue
    .line 295
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->l()V

    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->w:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->a(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->w:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->b(Landroid/view/View;)V

    .line 298
    return-void
.end method

.method protected final m()V
    .registers 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/bt;->m()V

    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->z:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->a(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->z:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->b(Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->t:Landroid/view/View;

    if-ne p1, v0, :cond_d

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->G:Z

    .line 404
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->C:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->b()V

    .line 408
    :cond_c
    :goto_c
    return-void

    .line 405
    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->u:Landroid/view/View;

    if-ne p1, v0, :cond_c

    .line 406
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->n:Lcom/google/android/youtube/app/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/k;->v:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;)V

    goto :goto_c
.end method
