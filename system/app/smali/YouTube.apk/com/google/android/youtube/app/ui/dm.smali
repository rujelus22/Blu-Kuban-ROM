.class public final Lcom/google/android/youtube/app/ui/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final A:Lcom/google/android/youtube/core/player/bi;

.field protected final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/core/Analytics;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private final g:Lcom/google/android/youtube/app/ui/ep;

.field private final h:Lcom/google/android/youtube/app/YouTubePlatformUtil;

.field private final i:Lcom/google/android/youtube/core/b/ae;

.field private final j:Lcom/google/android/youtube/core/async/ar;

.field private final k:Lcom/google/android/youtube/app/remote/at;

.field private final l:Lcom/google/android/youtube/app/remote/bd;

.field private final m:Lcom/google/android/youtube/app/remote/e;

.field private final n:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final o:Lcom/google/android/youtube/app/g;

.field private final p:Lcom/google/android/youtube/app/k;

.field private final q:Lcom/google/android/youtube/core/d;

.field private final r:Lcom/google/android/youtube/app/ui/du;

.field private final s:Lcom/google/android/youtube/app/ui/w;

.field private final t:Lcom/google/android/youtube/app/ui/dz;

.field private final u:Lcom/google/android/youtube/app/ui/ds;

.field private v:Lcom/google/android/youtube/core/model/Video;

.field private w:Landroid/net/Uri;

.field private final x:Lcom/google/android/youtube/app/a;

.field private final y:Lcom/google/android/youtube/app/ui/bd;

.field private final z:Lcom/google/android/youtube/app/ui/bq;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/g;Lcom/google/android/youtube/app/k;Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/e;Lcom/google/android/youtube/app/ui/bd;Lcom/google/android/youtube/app/ui/bq;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/ep;Lcom/google/android/youtube/app/YouTubePlatformUtil;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/player/bi;)V
    .registers 20
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->x:Lcom/google/android/youtube/app/a;

    .line 143
    const-string v1, "activity can not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    .line 144
    const-string v1, "analytics can not be null"

    invoke-static {p11, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->b:Lcom/google/android/youtube/core/Analytics;

    .line 145
    const-string v1, "userAuthorizer can not be null"

    invoke-static {p3, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 147
    const-string v1, "youTubeAuthorizer can not be null"

    invoke-static {p4, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/g;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->o:Lcom/google/android/youtube/app/g;

    .line 149
    const-string v1, "config can not be null"

    invoke-static {p5, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/k;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->p:Lcom/google/android/youtube/app/k;

    .line 150
    const-string v1, "watchInfoHelper can not be null"

    invoke-static {p12, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/ui/ep;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->g:Lcom/google/android/youtube/app/ui/ep;

    .line 152
    const-string v1, "youTubePlatformUtil can not be null"

    move-object/from16 v0, p13

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/YouTubePlatformUtil;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->h:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    .line 154
    const-string v1, "gdataClient can not be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/ae;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->i:Lcom/google/android/youtube/core/b/ae;

    .line 155
    const-string v1, "youTubeTvRemoteControl can not be null"

    invoke-static {p6, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/remote/at;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->k:Lcom/google/android/youtube/app/remote/at;

    .line 157
    const-string v1, "youTubeTvScreenMonitor can not be null"

    invoke-static {p7, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/remote/bd;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->l:Lcom/google/android/youtube/app/remote/bd;

    .line 159
    const-string v1, "atHomeRemoteControl can not be null"

    invoke-static {p8, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/remote/e;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->m:Lcom/google/android/youtube/app/remote/e;

    .line 161
    const-string v1, "remoteControlHelper can not be null"

    invoke-static {p9, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/ui/bd;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->y:Lcom/google/android/youtube/app/ui/bd;

    .line 163
    const-string v1, "remoteVolumeHelper can not be null"

    invoke-static {p10, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/ui/bq;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->z:Lcom/google/android/youtube/app/ui/bq;

    .line 165
    const-string v1, "errorHelper can not be null"

    move-object/from16 v0, p15

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/d;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->q:Lcom/google/android/youtube/core/d;

    .line 166
    const-string v1, "player can not be null"

    move-object/from16 v0, p16

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/bi;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->A:Lcom/google/android/youtube/core/player/bi;

    .line 168
    invoke-interface {p2}, Lcom/google/android/youtube/core/b/ae;->m()Lcom/google/android/youtube/core/async/ar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->j:Lcom/google/android/youtube/core/async/ar;

    .line 170
    new-instance v1, Lcom/google/android/youtube/app/ui/du;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/du;-><init>(Lcom/google/android/youtube/app/ui/dm;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->r:Lcom/google/android/youtube/app/ui/du;

    .line 171
    new-instance v1, Lcom/google/android/youtube/app/ui/dz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/dz;-><init>(Lcom/google/android/youtube/app/ui/dm;B)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->t:Lcom/google/android/youtube/app/ui/dz;

    .line 172
    new-instance v1, Lcom/google/android/youtube/app/ui/w;

    move-object/from16 v0, p15

    invoke-direct {v1, p1, p3, p2, v0}, Lcom/google/android/youtube/app/ui/w;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->s:Lcom/google/android/youtube/app/ui/w;

    .line 174
    new-instance v1, Lcom/google/android/youtube/app/ui/ds;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/ds;-><init>(Lcom/google/android/youtube/app/ui/dm;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->u:Lcom/google/android/youtube/app/ui/ds;

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->w:Landroid/net/Uri;

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dm;->w:Landroid/net/Uri;

    .line 249
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/dm;->h()Z

    move-result v0

    if-eqz v0, :cond_27

    const v0, 0x7f0b01bf

    .line 250
    :goto_b
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    .line 251
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 254
    :cond_14
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/dm;->h()Z

    move-result v0

    if-eqz v0, :cond_2b

    const v0, 0x7f02019f

    :goto_1d
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    :cond_26
    return-void

    .line 249
    :cond_27
    const v0, 0x7f0b01be

    goto :goto_b

    .line 254
    :cond_2b
    const v0, 0x7f02004b

    goto :goto_1d
.end method

.method private static a(Landroid/view/View;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 288
    if-eqz p0, :cond_b

    .line 289
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 290
    if-nez p1, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 292
    :cond_b
    return-void

    .line 290
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dm;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/dm;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dm;Landroid/net/Uri;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/dm;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dm;Landroid/view/View;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {p1, p2}, Lcom/google/android/youtube/app/ui/dm;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dm;Lcom/google/android/youtube/app/remote/bb;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "YouTubeTvConnect"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->k:Lcom/google/android/youtube/app/remote/at;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->v:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dm;->A:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/bi;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/bb;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->y:Lcom/google/android/youtube/app/ui/bd;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->k:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->z:Lcom/google/android/youtube/app/ui/bq;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->k:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bq;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dm;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->q:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    .line 296
    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/dm;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/dm;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->i:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->v:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/ui/ep;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->g:Lcom/google/android/youtube/app/ui/ep;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->b:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method private h()Z
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->w:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic i(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/async/ar;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->j:Lcom/google/android/youtube/core/async/ar;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/k;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->p:Lcom/google/android/youtube/app/k;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/g;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->o:Lcom/google/android/youtube/app/g;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/ui/dm;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "YouTubeTvDisconnect"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->y:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bd;->a()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->z:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bq;->a()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/remote/bd;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->l:Lcom/google/android/youtube/app/remote/bd;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/remote/at;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->k:Lcom/google/android/youtube/app/remote/at;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 268
    sparse-switch p1, :sswitch_data_26

    .line 283
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 270
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->r:Lcom/google/android/youtube/app/ui/du;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/du;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 272
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->s:Lcom/google/android/youtube/app/ui/w;

    new-instance v1, Lcom/google/android/youtube/app/ui/dn;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/dn;-><init>(Lcom/google/android/youtube/app/ui/dm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/w;->a(Lcom/google/android/youtube/app/ui/z;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 279
    :sswitch_18
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->t:Lcom/google/android/youtube/app/ui/dz;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dz;->a(Lcom/google/android/youtube/app/ui/dz;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 281
    :sswitch_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->u:Lcom/google/android/youtube/app/ui/ds;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ds;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 268
    :sswitch_data_26
    .sparse-switch
        0x3ed -> :sswitch_c
        0x3f4 -> :sswitch_5
        0x3f7 -> :sswitch_18
        0x3ff -> :sswitch_1f
    .end sparse-switch
.end method

.method public final a()V
    .registers 5

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Like"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/dx;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/dx;-><init>(Lcom/google/android/youtube/app/ui/dm;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 215
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->c:Landroid/view/View;

    .line 194
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->d:Landroid/view/View;

    .line 195
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 198
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dm;->v:Lcom/google/android/youtube/core/model/Video;

    .line 199
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/ui/dm;->a(Landroid/net/Uri;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->c:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Landroid/view/View;Z)V

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->d:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Landroid/view/View;Z)V

    .line 204
    :cond_14
    return-void
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Dislike"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/dx;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/dx;-><init>(Lcom/google/android/youtube/app/ui/dm;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 220
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Share"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->v:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/i;->b(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)V

    .line 225
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "CopyURL"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->h:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dm;->v:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/YouTubePlatformUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    const v0, 0x7f0b00c6

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/dm;->b(I)V

    .line 231
    return-void
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Flag"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dm;->u:Lcom/google/android/youtube/app/ui/ds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 236
    return-void
.end method

.method public final f()V
    .registers 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dm;->r:Lcom/google/android/youtube/app/ui/du;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 245
    return-void
.end method

.method public final g()V
    .registers 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "YouTubeTvAddScreen"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dm;->x:Lcom/google/android/youtube/app/a;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->v:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dm;->v:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    :goto_11
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dm;->A:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/bi;->d()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->b(Ljava/lang/String;I)V

    .line 305
    return-void

    .line 304
    :cond_1b
    const/4 v0, 0x0

    goto :goto_11
.end method
