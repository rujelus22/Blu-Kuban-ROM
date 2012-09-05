.class public final Lcom/google/android/youtube/app/ui/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/r;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/core/client/af;

.field private final c:Lcom/google/android/youtube/app/p;

.field private final d:Lcom/google/android/youtube/core/async/a;

.field private final e:Lcom/google/android/youtube/core/Analytics;

.field private final f:Lcom/google/android/youtube/core/e;

.field private final g:Landroid/view/View;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/ImageView;

.field private final j:Lcom/google/android/youtube/core/player/aq;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/widget/ImageView;

.field private final m:Landroid/widget/Button;

.field private final n:Lcom/google/android/youtube/core/ui/l;

.field private final o:I

.field private final p:I

.field private final q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Lcom/google/android/youtube/core/model/Video;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "player can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/aq;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->j:Lcom/google/android/youtube/core/player/aq;

    .line 77
    const-string v0, "activity can not be null"

    invoke-static {p2, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/app/Activity;

    .line 78
    const-string v0, "remoteControl can not be null"

    invoke-static {p3, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/p;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    .line 79
    const-string v0, "imageClient can not be null"

    invoke-static {p4, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/af;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->b:Lcom/google/android/youtube/core/client/af;

    .line 80
    const-string v0, "analytics can not be null"

    invoke-static {p5, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->e:Lcom/google/android/youtube/core/Analytics;

    .line 81
    const-string v0, "errorHelper can not be null"

    invoke-static {p6, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->f:Lcom/google/android/youtube/core/e;

    .line 82
    iput-boolean p7, p0, Lcom/google/android/youtube/app/ui/at;->q:Z

    .line 84
    const v0, 0x7f02001d

    iput v0, p0, Lcom/google/android/youtube/app/ui/at;->o:I

    .line 85
    const v0, 0x7f02001e

    iput v0, p0, Lcom/google/android/youtube/app/ui/at;->p:I

    .line 87
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->g:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->g:Landroid/view/View;

    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->i:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->g:Landroid/view/View;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->g:Landroid/view/View;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->g:Landroid/view/View;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->k:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->g:Landroid/view/View;

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->g:Landroid/view/View;

    const v2, 0x7f090018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    new-instance v2, Lcom/google/android/youtube/app/ui/au;

    invoke-direct {v2, p0, p3, p5}, Lcom/google/android/youtube/app/ui/au;-><init>(Lcom/google/android/youtube/app/ui/at;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/Analytics;)V

    invoke-static {p2, v0, v2}, Lcom/google/android/youtube/core/ui/l;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/m;)Lcom/google/android/youtube/core/ui/l;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/ui/at;->n:Lcom/google/android/youtube/core/ui/l;

    .line 113
    const v2, 0x7f09007a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->m:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->n:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->a()V

    .line 117
    new-instance v0, Lcom/google/android/youtube/app/ui/av;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/av;-><init>(Lcom/google/android/youtube/app/ui/at;)V

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->d:Lcom/google/android/youtube/core/async/a;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->s:Z

    .line 131
    new-instance v0, Lcom/google/android/youtube/app/ui/aw;

    invoke-direct {v0, p0, p3}, Lcom/google/android/youtube/app/ui/aw;-><init>(Lcom/google/android/youtube/app/ui/at;Lcom/google/android/youtube/app/p;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/youtube/app/ui/ax;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/ax;-><init>(Lcom/google/android/youtube/app/ui/at;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/youtube/app/ui/ay;

    invoke-direct {v1, p0, p5, p3}, Lcom/google/android/youtube/app/ui/ay;-><init>(Lcom/google/android/youtube/app/ui/at;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/youtube/app/s;)Ljava/lang/CharSequence;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 328
    sget-object v0, Lcom/google/android/youtube/app/s;->b:Lcom/google/android/youtube/app/s;

    if-ne p2, v0, :cond_24

    const v0, 0x7f0a01bd

    .line 330
    :goto_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v4}, Lcom/google/android/youtube/app/p;->g()Lcom/google/android/a/e/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/a/e/c;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0

    .line 328
    :cond_24
    const v0, 0x7f0a01bc

    goto :goto_7
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/at;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/at;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->s:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/at;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(Lcom/google/android/youtube/app/s;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/app/Activity;

    invoke-direct {p0, v1, p1}, Lcom/google/android/youtube/app/ui/at;->a(Landroid/content/Context;Lcom/google/android/youtube/app/s;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->n:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->b()V

    .line 390
    return-void
.end method

.method private b(Lcom/google/android/youtube/app/t;)V
    .registers 5
    .parameter

    .prologue
    .line 418
    sget-object v0, Lcom/google/android/youtube/app/t;->f:Lcom/google/android/youtube/app/t;

    if-eq p1, v0, :cond_10

    .line 419
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteStateChange"

    invoke-virtual {p1}, Lcom/google/android/youtube/app/t;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_f
    return-void

    .line 421
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteError"

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v2}, Lcom/google/android/youtube/app/p;->e()Lcom/google/android/youtube/app/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/app/q;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/at;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->s:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemotePause"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->c()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/youtube/app/ui/at;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_17
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->s:Z

    if-nez v0, :cond_45

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->s:Z

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->f()Lcom/google/android/youtube/app/s;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/s;->b:Lcom/google/android/youtube/app/s;

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteReplay"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    :goto_30
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/youtube/app/ui/at;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_17

    :cond_3d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemotePlay"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_30

    :cond_45
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private c(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 393
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->n:Lcom/google/android/youtube/core/ui/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/ui/l;->a(Ljava/lang/String;Z)V

    .line 395
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/at;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->u:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/at;)Lcom/google/android/youtube/app/p;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/at;)Lcom/google/android/youtube/core/player/aq;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->j:Lcom/google/android/youtube/core/player/aq;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/at;->a(Lcom/google/android/youtube/app/t;)V

    .line 284
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/s;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->t:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->t:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v1}, Lcom/google/android/youtube/app/p;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 194
    :cond_15
    :goto_15
    return-void

    .line 168
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->e:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemotePlayerStateChange"

    invoke-virtual {p1}, Lcom/google/android/youtube/app/s;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/google/android/youtube/app/ui/ba;->b:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/app/s;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9c

    goto :goto_15

    .line 172
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/youtube/app/ui/at;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->s:Z

    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/at;->b(Lcom/google/android/youtube/app/s;)V

    goto :goto_15

    .line 177
    :pswitch_3b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/youtube/app/ui/at;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iput-boolean v3, p0, Lcom/google/android/youtube/app/ui/at;->s:Z

    .line 179
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/at;->b(Lcom/google/android/youtube/app/s;)V

    goto :goto_15

    .line 182
    :pswitch_48
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iput-boolean v3, p0, Lcom/google/android/youtube/app/ui/at;->s:Z

    .line 184
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/at;->b(Lcom/google/android/youtube/app/s;)V

    goto :goto_15

    .line 187
    :pswitch_56
    iput-boolean v3, p0, Lcom/google/android/youtube/app/ui/at;->s:Z

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/app/Activity;

    sget-object v2, Lcom/google/android/youtube/app/s;->g:Lcom/google/android/youtube/app/s;

    invoke-direct {p0, v1, v2}, Lcom/google/android/youtube/app/ui/at;->a(Landroid/content/Context;Lcom/google/android/youtube/app/s;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->n:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->c()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 193
    :pswitch_7a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/app/Activity;

    invoke-direct {p0, v1, p1}, Lcom/google/android/youtube/app/ui/at;->a(Landroid/content/Context;Lcom/google/android/youtube/app/s;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->n:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->c()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    .line 170
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_3b
        :pswitch_48
        :pswitch_56
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
    .end packed-switch
.end method

.method public final a(Lcom/google/android/youtube/app/t;)V
    .registers 11
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->t:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 203
    const-string v0, "RemoteControlHelper was not initialized with a video id"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 249
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 207
    :cond_10
    sget-object v0, Lcom/google/android/youtube/app/ui/ba;->c:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/app/t;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_13c

    .line 231
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/google/android/youtube/app/ui/ba;->c:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/app/t;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_14c

    .line 240
    :goto_26
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->u:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->x:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_f

    .line 246
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/at;->x:Z

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->b:Lcom/google/android/youtube/core/client/af;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/at;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/at;->d:Lcom/google/android/youtube/core/async/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/af;->b(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_f

    .line 212
    :pswitch_42
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->r:Z

    if-eqz v0, :cond_f

    .line 213
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/at;->b(Lcom/google/android/youtube/app/t;)V

    .line 214
    iput-boolean v2, p0, Lcom/google/android/youtube/app/ui/at;->r:Z

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->j:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->a()Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/at;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/PlayerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->j:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->d()V

    .line 215
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->q:Z

    if-eqz v0, :cond_f

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_f

    .line 223
    :pswitch_65
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/at;->b(Lcom/google/android/youtube/app/t;)V

    .line 224
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->r:Z

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->j:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->e()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->j:Lcom/google/android/youtube/core/player/aq;

    new-instance v3, Lcom/google/android/youtube/app/ui/az;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/ui/az;-><init>(Lcom/google/android/youtube/app/ui/at;)V

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/aq;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->j:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->a()Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/at;->g:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/at;->r:Z

    .line 225
    :cond_8d
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->q:Z

    if-eqz v0, :cond_1b

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1b

    .line 233
    :pswitch_97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->n:Lcom/google/android/youtube/core/ui/l;

    const v2, 0x7f0a01b8

    invoke-virtual {v0, v2, v1}, Lcom/google/android/youtube/core/ui/l;->a(IZ)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_26

    .line 236
    :pswitch_b0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/at;->a(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 239
    :pswitch_bb
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->e()Lcom/google/android/youtube/app/q;

    move-result-object v3

    sget-object v0, Lcom/google/android/youtube/app/q;->c:Lcom/google/android/youtube/app/q;

    if-eq v3, v0, :cond_f3

    move v0, v1

    :goto_c6
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/at;->m:Landroid/widget/Button;

    if-eqz v0, :cond_f5

    const v0, 0x7f0a0018

    :goto_cd
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/at;->n:Lcom/google/android/youtube/core/ui/l;

    sget-object v0, Lcom/google/android/youtube/app/ui/ba;->a:[I

    invoke-virtual {v3}, Lcom/google/android/youtube/app/q;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_156

    const-string v0, ""

    :goto_df
    invoke-virtual {v4, v0, v1}, Lcom/google/android/youtube/core/ui/l;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_26

    :cond_f3
    move v0, v2

    goto :goto_c6

    :cond_f5
    const v0, 0x7f0a0016

    goto :goto_cd

    :pswitch_f9
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/app/Activity;

    const v3, 0x7f0a01c0

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v6}, Lcom/google/android/youtube/app/p;->g()Lcom/google/android/a/e/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/a/e/c;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_df

    :pswitch_119
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/app/Activity;

    const v3, 0x7f0a01bf

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v6}, Lcom/google/android/youtube/app/p;->g()Lcom/google/android/a/e/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/a/e/c;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_df

    :pswitch_131
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/app/Activity;

    const v2, 0x7f0a0008

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_df

    .line 207
    nop

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_42
        :pswitch_42
        :pswitch_65
        :pswitch_65
        :pswitch_65
    .end packed-switch

    .line 231
    :pswitch_data_14c
    .packed-switch 0x4
        :pswitch_97
        :pswitch_b0
        :pswitch_bb
    .end packed-switch

    .line 239
    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_f9
        :pswitch_119
        :pswitch_131
    .end packed-switch
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 3
    .parameter

    .prologue
    .line 266
    const-string v0, "video can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/at;->t:Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/at;->u:Lcom/google/android/youtube/core/model/Video;

    .line 269
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->t:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 253
    const-string v0, "Video id is null"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 263
    :goto_a
    return-void

    .line 256
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->t:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 257
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->f()Lcom/google/android/youtube/app/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/at;->a(Lcom/google/android/youtube/app/s;)V

    goto :goto_a

    .line 258
    :cond_1d
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->v:Z

    if-eqz v0, :cond_27

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/at;->c(Ljava/lang/String;)V

    goto :goto_a

    .line 261
    :cond_27
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->g()Lcom/google/android/a/e/c;

    move-result-object v0

    const-string v1, "the currentScreen should not be null"

    invoke-static {v0, v1}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01bb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v4}, Lcom/google/android/youtube/app/p;->g()Lcom/google/android/a/e/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/a/e/c;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->n:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->b()V

    goto :goto_a
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/at;->v:Z

    .line 273
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/at;->w:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->c:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/t;->c:Lcom/google/android/youtube/app/t;

    if-eq v0, v1, :cond_10

    .line 280
    :goto_f
    return-void

    .line 279
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/at;->c(Ljava/lang/String;)V

    goto :goto_f
.end method
