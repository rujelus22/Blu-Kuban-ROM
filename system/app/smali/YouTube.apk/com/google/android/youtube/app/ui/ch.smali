.class public final Lcom/google/android/youtube/app/ui/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/core/Analytics;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private final g:Lcom/google/android/youtube/app/ui/dh;

.field private final h:Lcom/google/android/youtube/app/ah;

.field private final i:Lcom/google/android/youtube/core/client/ad;

.field private final j:Lcom/google/android/youtube/core/async/ad;

.field private final k:Lcom/google/android/youtube/app/p;

.field private final l:Lcom/google/android/youtube/app/u;

.field private final m:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final n:Lcom/google/android/youtube/app/aa;

.field private final o:Lcom/google/android/youtube/app/ae;

.field private final p:Lcom/google/android/youtube/core/e;

.field private final q:Lcom/google/android/youtube/app/ui/cq;

.field private final r:Lcom/google/android/youtube/app/ui/q;

.field private final s:Lcom/google/android/youtube/app/ui/cm;

.field private t:Lcom/google/android/youtube/core/model/Video;

.field private u:Landroid/net/Uri;

.field private final v:Lcom/google/android/youtube/app/o;

.field private final w:Lcom/google/android/youtube/app/ui/at;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/aa;Lcom/google/android/youtube/app/ae;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/app/ui/at;Lcom/google/android/youtube/app/u;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/app/ah;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/e;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p12, p0, Lcom/google/android/youtube/app/ui/ch;->v:Lcom/google/android/youtube/app/o;

    .line 120
    const-string v0, "activity can not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    .line 121
    const-string v0, "analytics can not be null"

    invoke-static {p9, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->b:Lcom/google/android/youtube/core/Analytics;

    .line 122
    const-string v0, "userAuthorizer can not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->m:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 124
    const-string v0, "youTubeAuthorizer can not be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/aa;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->n:Lcom/google/android/youtube/app/aa;

    .line 126
    const-string v0, "config can not be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ae;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->o:Lcom/google/android/youtube/app/ae;

    .line 127
    const-string v0, "watchInfoHelper can not be null"

    invoke-static {p10, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/dh;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->g:Lcom/google/android/youtube/app/ui/dh;

    .line 129
    const-string v0, "youTubePlatformUtil can not be null"

    invoke-static {p11, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ah;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->h:Lcom/google/android/youtube/app/ah;

    .line 131
    const-string v0, "gdataClient can not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->i:Lcom/google/android/youtube/core/client/ad;

    .line 132
    const-string v0, "remoteControl can not be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/p;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->k:Lcom/google/android/youtube/app/p;

    .line 133
    const-string v0, "remoteControlHelper can not be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/at;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->w:Lcom/google/android/youtube/app/ui/at;

    .line 135
    const-string v0, "screensClient can not be null"

    invoke-static {p8, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/u;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->l:Lcom/google/android/youtube/app/u;

    .line 136
    const-string v0, "errorHelper can not be null"

    invoke-static {p13, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->p:Lcom/google/android/youtube/core/e;

    .line 138
    invoke-interface {p2}, Lcom/google/android/youtube/core/client/ad;->k()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->j:Lcom/google/android/youtube/core/async/ad;

    .line 140
    new-instance v0, Lcom/google/android/youtube/app/ui/cq;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/cq;-><init>(Lcom/google/android/youtube/app/ui/ch;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->q:Lcom/google/android/youtube/app/ui/cq;

    .line 141
    new-instance v0, Lcom/google/android/youtube/app/ui/cm;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/cm;-><init>(Lcom/google/android/youtube/app/ui/ch;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->s:Lcom/google/android/youtube/app/ui/cm;

    .line 142
    new-instance v0, Lcom/google/android/youtube/app/ui/q;

    invoke-direct {v0, p1, p3, p2, p13}, Lcom/google/android/youtube/app/ui/q;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->r:Lcom/google/android/youtube/app/ui/q;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->u:Landroid/net/Uri;

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->m:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ch;->u:Landroid/net/Uri;

    .line 218
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ch;->h()Z

    move-result v0

    if-eqz v0, :cond_27

    const v0, 0x7f0a0165

    .line 219
    :goto_b
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ch;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    .line 220
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ch;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 223
    :cond_14
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ch;->h()Z

    move-result v0

    if-eqz v0, :cond_2b

    const v0, 0x7f020108

    :goto_1d
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ch;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ch;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    :cond_26
    return-void

    .line 218
    :cond_27
    const v0, 0x7f0a0164

    goto :goto_b

    .line 223
    :cond_2b
    const v0, 0x7f020030

    goto :goto_1d
.end method

.method private static a(Landroid/view/View;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 255
    if-eqz p0, :cond_b

    .line 256
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 257
    if-nez p1, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 259
    :cond_b
    return-void

    .line 257
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ch;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/ch;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ch;Landroid/net/Uri;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/ch;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ch;Landroid/view/View;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {p1, p2}, Lcom/google/android/youtube/app/ui/ch;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ch;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/e;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->p:Lcom/google/android/youtube/core/e;

    return-object v0
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 263
    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/ch;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/ch;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->i:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->t:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/ui/dh;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->g:Lcom/google/android/youtube/app/ui/dh;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->b:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method private h()Z
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->u:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic i(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/async/ad;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->j:Lcom/google/android/youtube/core/async/ad;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/ae;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->o:Lcom/google/android/youtube/app/ae;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/aa;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->n:Lcom/google/android/youtube/app/aa;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/p;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->k:Lcom/google/android/youtube/app/p;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/ui/at;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->w:Lcom/google/android/youtube/app/ui/at;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/o;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->v:Lcom/google/android/youtube/app/o;

    return-object v0
.end method

.method static synthetic o(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/u;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->l:Lcom/google/android/youtube/app/u;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 237
    sparse-switch p1, :sswitch_data_20

    .line 250
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 239
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->q:Lcom/google/android/youtube/app/ui/cq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cq;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 241
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->r:Lcom/google/android/youtube/app/ui/q;

    new-instance v1, Lcom/google/android/youtube/app/ui/ci;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/ci;-><init>(Lcom/google/android/youtube/app/ui/ch;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/q;->a(Lcom/google/android/youtube/app/ui/t;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 248
    :sswitch_18
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->s:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cm;->a(Lcom/google/android/youtube/app/ui/cm;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 237
    nop

    :sswitch_data_20
    .sparse-switch
        0x3ed -> :sswitch_c
        0x3f4 -> :sswitch_5
        0x3f7 -> :sswitch_18
    .end sparse-switch
.end method

.method public final a()V
    .registers 5

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Like"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->m:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/ct;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/ct;-><init>(Lcom/google/android/youtube/app/ui/ch;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 184
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->c:Landroid/view/View;

    .line 163
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->d:Landroid/view/View;

    .line 164
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 167
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ch;->t:Lcom/google/android/youtube/core/model/Video;

    .line 168
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/ui/ch;->a(Landroid/net/Uri;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->c:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/ch;->a(Landroid/view/View;Z)V

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->d:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/ch;->a(Landroid/view/View;Z)V

    .line 173
    :cond_14
    return-void
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Dislike"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->m:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/ct;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/ct;-><init>(Lcom/google/android/youtube/app/ui/ch;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 189
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Share"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ch;->t:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/g;->b(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)V

    .line 194
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "CopyURL"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->h:Lcom/google/android/youtube/app/ah;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ch;->t:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/ah;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    const v0, 0x7f0a009f

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/ch;->b(I)V

    .line 200
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Flag"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ch;->t:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/g;->c(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)V

    .line 205
    return-void
.end method

.method public final f()V
    .registers 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->m:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ch;->q:Lcom/google/android/youtube/app/ui/cq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 214
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteChooseScreen"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->s:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cm;->b(Lcom/google/android/youtube/app/ui/cm;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    const/16 v1, 0x3f7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 273
    return-void
.end method
