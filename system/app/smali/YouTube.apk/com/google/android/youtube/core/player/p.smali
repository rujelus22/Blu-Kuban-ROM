.class public final Lcom/google/android/youtube/core/player/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/a;
.implements Lcom/google/android/youtube/core/player/ab;
.implements Lcom/google/android/youtube/core/player/ap;
.implements Lcom/google/android/youtube/core/player/b;
.implements Lcom/google/android/youtube/core/player/m;


# instance fields
.field private A:Lcom/google/android/youtube/core/model/UserAuth;

.field private B:Z

.field private C:Lcom/google/android/youtube/core/async/a/a;

.field private D:Lcom/google/android/youtube/core/async/i;

.field private E:Lcom/google/android/youtube/core/async/i;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private final J:Lcom/google/android/youtube/core/player/c;

.field private final K:Lcom/google/android/youtube/core/player/x;

.field private final L:Ljava/lang/String;

.field private volatile M:Z

.field private N:Landroid/widget/Toast;

.field private O:Lcom/google/android/youtube/core/async/g;

.field private P:Lcom/google/android/youtube/core/async/g;

.field private Q:Lcom/google/android/youtube/core/async/g;

.field private R:Lcom/google/android/youtube/core/async/g;

.field private S:Lcom/google/android/youtube/core/async/g;

.field private T:Landroid/os/Handler;

.field private final a:Lcom/google/android/youtube/core/player/aq;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/android/youtube/core/Analytics;

.field private final d:Lcom/google/android/youtube/core/client/ad;

.field private final e:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final f:Lcom/google/android/youtube/core/utils/i;

.field private final g:Lcom/google/android/youtube/core/player/l;

.field private final h:Lcom/google/android/youtube/core/player/ControllerOverlay;

.field private final i:Lcom/google/android/youtube/core/player/AdOverlay;

.field private final j:Lcom/google/android/youtube/core/player/z;

.field private final k:Lcom/google/android/youtube/core/player/ad;

.field private final l:Lcom/google/android/youtube/core/player/AdultContentHelper;

.field private final m:Lcom/google/android/youtube/core/player/al;

.field private final n:Lcom/google/android/youtube/core/client/a;

.field private final o:Lcom/google/android/youtube/core/client/aj;

.field private final p:Lcom/google/android/youtube/core/e;

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Lcom/google/android/youtube/core/model/Video;

.field private v:Lcom/google/android/youtube/core/model/u;

.field private w:Lcom/google/android/youtube/core/model/o;

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/a;Lcom/google/android/youtube/core/client/aj;Lcom/google/android/youtube/core/client/ah;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/x;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/l;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/utils/i;Z)V
    .registers 25
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
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const-string v1, "player cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/aq;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    .line 204
    const-string v1, "activity cannot be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    .line 205
    const-string v1, "preferences cannot be null"

    invoke-static {p3, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "gdataClient cannot be null"

    invoke-static {p4, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/client/ad;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/client/ad;

    .line 207
    iput-object p5, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/client/a;

    .line 208
    const-string v1, "statsClient cannot be null"

    invoke-static {p6, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/client/aj;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    .line 209
    const-string v1, "subtitlesClient cannot be null"

    invoke-static {p7, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "userAuthorizer cannot be null"

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 211
    const-string v1, "analytics cannot be null"

    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/Analytics;

    .line 212
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->L:Ljava/lang/String;

    .line 213
    const-string v1, "listener cannot be null"

    move-object/from16 v0, p11

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/x;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    .line 214
    const-string v1, "controllerOverlay cannot be null"

    move-object/from16 v0, p12

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/ControllerOverlay;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    .line 215
    const-string v1, "brandingOverlay cannot be null"

    move-object/from16 v0, p13

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/l;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->g:Lcom/google/android/youtube/core/player/l;

    .line 216
    const-string v1, "errorHelper cannot be null"

    move-object/from16 v0, p14

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/e;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->p:Lcom/google/android/youtube/core/e;

    .line 217
    const-string v1, "networkStatus cannot be null"

    move-object/from16 v0, p15

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/utils/i;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->f:Lcom/google/android/youtube/core/utils/i;

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->B:Z

    .line 221
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/aq;->a()Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v7

    .line 223
    invoke-interface/range {p13 .. p13}, Lcom/google/android/youtube/core/player/l;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 225
    new-instance v4, Lcom/google/android/youtube/core/player/ai;

    invoke-direct {v4, p2}, Lcom/google/android/youtube/core/player/ai;-><init>(Landroid/app/Activity;)V

    .line 226
    invoke-virtual {v7, v4}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 228
    move-object/from16 v0, p12

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Lcom/google/android/youtube/core/player/m;)V

    .line 229
    invoke-interface/range {p12 .. p12}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 230
    new-instance v1, Lcom/google/android/youtube/core/player/AdOverlay;

    invoke-direct {v1, p2, p0}, Lcom/google/android/youtube/core/player/AdOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/a;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->i:Lcom/google/android/youtube/core/player/AdOverlay;

    .line 231
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->i:Lcom/google/android/youtube/core/player/AdOverlay;

    invoke-virtual {v7, v1}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 233
    const-string v1, "default_hq"

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_170

    const/4 v1, 0x1

    :goto_c7
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->y:Z

    .line 236
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->y:Z

    move-object/from16 v0, p12

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->b(Z)V

    .line 238
    new-instance v1, Lcom/google/android/youtube/core/player/ad;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p12

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/core/player/ad;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/player/ai;Lcom/google/android/youtube/core/player/ah;Lcom/google/android/youtube/core/client/ah;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->k:Lcom/google/android/youtube/core/player/ad;

    .line 241
    new-instance v1, Lcom/google/android/youtube/core/player/AdultContentHelper;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object/from16 v5, p8

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/core/player/AdultContentHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/player/b;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/client/ad;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->l:Lcom/google/android/youtube/core/player/AdultContentHelper;

    .line 243
    new-instance v1, Lcom/google/android/youtube/core/player/al;

    const-string v2, "warning_3d"

    const v3, 0x7f0a0007

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p2, p0, v2, v3}, Lcom/google/android/youtube/core/player/al;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/ap;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->m:Lcom/google/android/youtube/core/player/al;

    .line 246
    new-instance v1, Lcom/google/android/youtube/core/utils/q;

    invoke-direct {v1}, Lcom/google/android/youtube/core/utils/q;-><init>()V

    .line 248
    new-instance v2, Lcom/google/android/youtube/core/player/z;

    invoke-direct {v2, p2, v1, p0}, Lcom/google/android/youtube/core/player/z;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/c;Lcom/google/android/youtube/core/player/ab;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/p;->j:Lcom/google/android/youtube/core/player/z;

    .line 249
    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->j:Lcom/google/android/youtube/core/player/z;

    invoke-virtual {v7, v2}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 251
    invoke-interface {p6}, Lcom/google/android/youtube/core/client/aj;->a()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/player/aq;->a(Landroid/os/Handler;)V

    .line 254
    new-instance v2, Lcom/google/android/youtube/core/player/c;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/android/youtube/core/player/c;-><init>(Lcom/google/android/youtube/core/utils/c;Z)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/p;->J:Lcom/google/android/youtube/core/player/c;

    .line 256
    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->N:Landroid/widget/Toast;

    .line 258
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/r;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/r;-><init>(Lcom/google/android/youtube/core/player/p;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->O:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/s;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/s;-><init>(Lcom/google/android/youtube/core/player/p;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->P:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/t;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/t;-><init>(Lcom/google/android/youtube/core/player/p;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->Q:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/u;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/u;-><init>(Lcom/google/android/youtube/core/player/p;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->R:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/v;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/v;-><init>(Lcom/google/android/youtube/core/player/p;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->S:Lcom/google/android/youtube/core/async/g;

    new-instance v1, Lcom/google/android/youtube/core/player/w;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/w;-><init>(Lcom/google/android/youtube/core/player/p;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->T:Landroid/os/Handler;

    .line 259
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->T:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/player/aq;->a(Landroid/os/Handler;)V

    .line 260
    return-void

    .line 233
    :cond_170
    invoke-interface/range {p15 .. p15}, Lcom/google/android/youtube/core/utils/i;->f()Z

    move-result v1

    if-eqz v1, :cond_185

    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_185

    invoke-interface/range {p15 .. p15}, Lcom/google/android/youtube/core/utils/i;->b()Z

    move-result v1

    if-nez v1, :cond_185

    const/4 v1, 0x1

    goto/16 :goto_c7

    :cond_185
    const/4 v1, 0x0

    goto/16 :goto_c7
.end method

.method private A()V
    .registers 5

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->A:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_12

    .line 408
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->A:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/p;->P:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 412
    :goto_11
    return-void

    .line 410
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->P:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_11
.end method

.method private B()V
    .registers 5

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/client/aj;->a(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/o;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 451
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->x:Z

    .line 453
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 454
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->i:Lcom/google/android/youtube/core/player/AdOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/AdOverlay;->a(Lcom/google/android/youtube/core/model/o;)V

    .line 456
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/aj;->a(Landroid/net/Uri;Z)V

    .line 458
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    new-instance v1, Lcom/google/android/youtube/core/model/Stream;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/o;->d:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/model/Stream;)V

    .line 459
    return-void
.end method

.method private C()V
    .registers 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 480
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->LIVE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 486
    :goto_f
    return-void

    .line 481
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 482
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    goto :goto_f

    .line 484
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    goto :goto_f
.end method

.method private D()V
    .registers 6

    .prologue
    .line 489
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 491
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->y:Z

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->v:Lcom/google/android/youtube/core/model/u;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/u;->b:Lcom/google/android/youtube/core/model/Stream;

    .line 493
    :goto_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    .line 494
    if-eqz v0, :cond_fb

    .line 495
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/youtube/core/client/aj;->a(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/o;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 496
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->L:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 497
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "androidcid"

    iget-object v3, p0, Lcom/google/android/youtube/core/player/p;->L:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 499
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 501
    :cond_3d
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 503
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 505
    :cond_74
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/aj;->j()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 506
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/aj;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 509
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 513
    :cond_9e
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->C()V

    .line 514
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->g:Lcom/google/android/youtube/core/player/l;

    if-eqz v1, :cond_b4

    .line 515
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->g:Lcom/google/android/youtube/core/player/l;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/l;->b()V

    .line 517
    :cond_b4
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v1

    if-nez v1, :cond_cc

    .line 518
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->v:Lcom/google/android/youtube/core/model/u;

    iget-boolean v2, v2, Lcom/google/android/youtube/core/model/u;->a:Z

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Z)V

    .line 519
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/p;->y:Z

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->b(Z)V

    .line 521
    :cond_cc
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    iget-boolean v3, v0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/client/aj;->a(Landroid/net/Uri;Z)V

    .line 522
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 523
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/aq;->b(Lcom/google/android/youtube/core/model/Stream;)V

    .line 535
    :goto_e2
    return-void

    .line 491
    :cond_e3
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->v:Lcom/google/android/youtube/core/model/u;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/u;->c:Lcom/google/android/youtube/core/model/Stream;

    goto/16 :goto_b

    .line 524
    :cond_e9
    iget v1, p0, Lcom/google/android/youtube/core/player/p;->s:I

    if-lez v1, :cond_f5

    .line 525
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    iget v2, p0, Lcom/google/android/youtube/core/player/p;->s:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/model/Stream;I)V

    goto :goto_e2

    .line 527
    :cond_f5
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/model/Stream;)V

    goto :goto_e2

    .line 530
    :cond_fb
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->G:Z

    .line 531
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "PlayErrorNoStream"

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;Z)V

    .line 532
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v1, 0x7f0a0031

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(I)V

    .line 533
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->E()V

    goto :goto_e2
.end method

.method private E()V
    .registers 3

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->B:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 623
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->N:Landroid/widget/Toast;

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 624
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->N:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 634
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->T:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/core/player/q;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/q;-><init>(Lcom/google/android/youtube/core/player/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    :cond_23
    return-void
.end method

.method private F()V
    .registers 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 682
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 683
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/p;->e(Z)V

    .line 685
    :cond_13
    return-void
.end method

.method private G()V
    .registers 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    if-eqz v0, :cond_9

    .line 802
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->e()V

    .line 804
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->D:Lcom/google/android/youtube/core/async/i;

    if-eqz v0, :cond_12

    .line 805
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->D:Lcom/google/android/youtube/core/async/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    .line 807
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->E:Lcom/google/android/youtube/core/async/i;

    if-eqz v0, :cond_1b

    .line 808
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->E:Lcom/google/android/youtube/core/async/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    .line 810
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->m:Lcom/google/android/youtube/core/player/al;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/al;->b()V

    .line 811
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->l:Lcom/google/android/youtube/core/player/AdultContentHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdultContentHelper;->c()V

    .line 812
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/a;Lcom/google/android/youtube/core/client/aj;Lcom/google/android/youtube/core/client/ah;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/x;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/l;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/utils/i;)Lcom/google/android/youtube/core/player/p;
    .registers 33
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
    .line 166
    const-string v1, "adsClient cannot be null: use createAdFreeDirector"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "revShareClientId cannot be empty: use createAdFreeDirector"

    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    new-instance v1, Lcom/google/android/youtube/core/player/p;

    const/16 v17, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v17}, Lcom/google/android/youtube/core/player/p;-><init>(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/a;Lcom/google/android/youtube/core/client/aj;Lcom/google/android/youtube/core/client/ah;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/x;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/l;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/utils/i;Z)V

    return-object v1
.end method

.method public static a(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/aj;Lcom/google/android/youtube/core/client/ah;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/player/x;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/l;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/utils/i;)Lcom/google/android/youtube/core/player/p;
    .registers 30
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
    .line 155
    new-instance v0, Lcom/google/android/youtube/core/player/p;

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v0 .. v16}, Lcom/google/android/youtube/core/player/p;-><init>(Lcom/google/android/youtube/core/player/aq;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/a;Lcom/google/android/youtube/core/client/aj;Lcom/google/android/youtube/core/client/ah;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/x;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/l;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/utils/i;Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/p;Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/LiveEvent;->isUpcoming()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->g()V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->j:Lcom/google/android/youtube/core/player/z;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/model/LiveEvent;)V

    :goto_10
    return-void

    :cond_11
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->A()V

    goto :goto_10
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/p;Lcom/google/android/youtube/core/model/Video;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 63
    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/p;->F:Z

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->J:Lcom/google/android/youtube/core/player/c;

    invoke-virtual {v2, p1}, Lcom/google/android/youtube/core/player/c;->b(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/x;->f()V

    goto :goto_a

    :cond_1d
    iput-object v4, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->x:Z

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->G:Z

    iput-object v4, p0, Lcom/google/android/youtube/core/player/p;->v:Lcom/google/android/youtube/core/model/u;

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->r:Z

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v3}, Lcom/google/android/youtube/core/async/a/a;->c()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->f(Z)V

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v3}, Lcom/google/android/youtube/core/async/a/a;->d()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->g(Z)V

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/p;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/aj;->f()V

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/p;->z:Ljava/lang/String;

    :cond_50
    iput-object p1, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v3, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v2, v3, :cond_9e

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v3, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v2, v3, :cond_64

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v2

    if-nez v2, :cond_9e

    :cond_64
    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v3, "PlayCannotProceeed"

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;Z)V

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    iget v2, v2, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(I)V

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->G:Z

    :goto_76
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    invoke-interface {v1, p1}, Lcom/google/android/youtube/core/player/x;->a(Lcom/google/android/youtube/core/model/Video;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->k:Lcom/google/android/youtube/core/player/ad;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/player/ad;->a(Lcom/google/android/youtube/core/model/Video;)V

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->couldHaveBranding()Z

    move-result v1

    if-eqz v1, :cond_d7

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->R:Lcom/google/android/youtube/core/async/g;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/i;->a(Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/i;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/p;->E:Lcom/google/android/youtube/core/async/i;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/p;->E:Lcom/google/android/youtube/core/async/i;

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/client/ad;->b(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    :goto_97
    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->E()V

    goto/16 :goto_a

    :cond_9e
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->F:Z

    if-eqz v0, :cond_b4

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->M:Z

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->e()V

    move v0, v1

    goto :goto_76

    :cond_ad
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d()V

    move v0, v1

    goto :goto_76

    :cond_b4
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->f:Lcom/google/android/youtube/core/utils/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/i;->f()Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->m:Lcom/google/android/youtube/core/player/al;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/al;->a()V

    move v0, v1

    goto :goto_76

    :cond_c7
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->l:Lcom/google/android/youtube/core/player/AdultContentHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdultContentHelper;->b()V

    move v0, v1

    goto :goto_76

    :cond_d2
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->z()V

    move v0, v1

    goto :goto_76

    :cond_d7
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    invoke-interface {v1, v4}, Lcom/google/android/youtube/core/player/x;->a(Lcom/google/android/youtube/core/model/Branding;)V

    goto :goto_97
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/p;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->p:Lcom/google/android/youtube/core/e;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/x;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/p;Ljava/lang/String;Lcom/google/android/youtube/core/model/o;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p2, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    if-eqz p2, :cond_c

    iget-object v0, p2, Lcom/google/android/youtube/core/model/o;->d:Landroid/net/Uri;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->B()V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->D()V

    goto :goto_b
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/p;)Z
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->F:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/p;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/p;->G:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/p;)V
    .registers 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->F()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/p;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->G:Z

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->p:Lcom/google/android/youtube/core/e;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/p;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/p;Ljava/lang/Exception;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->D()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/p;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/p;->f(Z)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/p;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->p:Lcom/google/android/youtube/core/e;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/x;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/x;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    return-object v0
.end method

.method private e(Z)V
    .registers 3
    .parameter

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->G()V

    .line 290
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->f()V

    .line 292
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->h()V

    .line 293
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->f()V

    .line 294
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->g:Lcom/google/android/youtube/core/player/l;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/l;->c()V

    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->i:Lcom/google/android/youtube/core/player/AdOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdOverlay;->a()V

    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->j:Lcom/google/android/youtube/core/player/z;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/z;->a()V

    .line 297
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/x;->b()V

    .line 299
    if-eqz p1, :cond_2e

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->a()V

    .line 304
    :goto_2d
    return-void

    .line 302
    :cond_2e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->b()V

    goto :goto_2d
.end method

.method static synthetic f(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/ControllerOverlay;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    return-object v0
.end method

.method private f(Z)V
    .registers 3
    .parameter

    .prologue
    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->x:Z

    .line 467
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/p;->H:Z

    .line 468
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->i:Lcom/google/android/youtube/core/player/AdOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdOverlay;->a()V

    .line 469
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->h()V

    .line 470
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->C()V

    .line 471
    if-nez p1, :cond_21

    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/client/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/a;->a()V

    .line 473
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/aj;->f()V

    .line 474
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->D()V

    .line 476
    :cond_21
    return-void
.end method

.method static synthetic g(Lcom/google/android/youtube/core/player/p;)Z
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->r:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/c;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->J:Lcom/google/android/youtube/core/player/c;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/core/player/p;)Z
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->G:Z

    return v0
.end method

.method static synthetic j(Lcom/google/android/youtube/core/player/p;)Z
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->x:Z

    return v0
.end method

.method static synthetic k(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/AdOverlay;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->i:Lcom/google/android/youtube/core/player/AdOverlay;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/core/player/p;)V
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->M:Z

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->I:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->B:Z

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->F()V

    goto :goto_c

    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d()V

    :goto_28
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->q:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/p;->b(Z)V

    goto :goto_c

    :cond_31
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->e()V

    goto :goto_28
.end method

.method static synthetic m(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/ad;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->k:Lcom/google/android/youtube/core/player/ad;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/utils/i;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->f:Lcom/google/android/youtube/core/utils/i;

    return-object v0
.end method

.method private z()V
    .registers 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->f()V

    .line 378
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 379
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->S:Lcom/google/android/youtube/core/async/g;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/i;->a(Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/i;

    move-result-object v0

    .line 381
    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->D:Lcom/google/android/youtube/core/async/i;

    .line 382
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->d:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/client/ad;->b(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    .line 386
    :goto_1e
    return-void

    .line 384
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->A()V

    goto :goto_1e
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->e:Landroid/net/Uri;

    if-eqz v0, :cond_1d

    .line 720
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/client/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/a;->a()V

    .line 721
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/aj;->d()V

    .line 722
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->e:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 724
    :cond_1d
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/aq;->a(I)V

    .line 671
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->d()V

    .line 672
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 758
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_20

    move v0, v1

    .line 759
    :goto_7
    iget-object v4, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    if-nez v0, :cond_22

    move v3, v1

    :goto_c
    invoke-interface {v4, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d(Z)V

    .line 760
    iget-object v3, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    if-eqz v0, :cond_24

    iget-boolean v4, p0, Lcom/google/android/youtube/core/player/p;->q:Z

    if-nez v4, :cond_24

    :goto_17
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->h(Z)V

    .line 761
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->i:Lcom/google/android/youtube/core/player/AdOverlay;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->a(Z)V

    .line 762
    return-void

    :cond_20
    move v0, v2

    .line 758
    goto :goto_7

    :cond_22
    move v3, v2

    .line 759
    goto :goto_c

    :cond_24
    move v1, v2

    .line 760
    goto :goto_17
.end method

.method public final a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 279
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/async/a/a;Ljava/lang/String;ILcom/google/android/youtube/core/model/UserAuth;)V

    .line 280
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/async/a/a;Ljava/lang/String;ILcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 264
    iput-object p2, p0, Lcom/google/android/youtube/core/player/p;->t:Ljava/lang/String;

    .line 265
    iput p3, p0, Lcom/google/android/youtube/core/player/p;->s:I

    .line 266
    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    .line 267
    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->v:Lcom/google/android/youtube/core/model/u;

    .line 268
    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    .line 269
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/a/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    .line 270
    iput-object p4, p0, Lcom/google/android/youtube/core/player/p;->A:Lcom/google/android/youtube/core/model/UserAuth;

    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->O:Lcom/google/android/youtube/core/async/g;

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/async/a/a;->a(Lcom/google/android/youtube/core/async/g;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->h()V

    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/p;->e(Z)V

    .line 276
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/u;)V
    .registers 5
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/android/youtube/core/player/p;->v:Lcom/google/android/youtube/core/model/u;

    .line 416
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->v:Lcom/google/android/youtube/core/model/u;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/u;->b:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream;->isHD()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->c(Z)V

    .line 417
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/client/a;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video;->isMonetized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 418
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/client/a;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->y:Z

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/client/a;->a(Z)V

    .line 419
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->Q:Lcom/google/android/youtube/core/async/g;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/i;->a(Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/i;

    move-result-object v0

    .line 420
    iput-object v0, p0, Lcom/google/android/youtube/core/player/p;->D:Lcom/google/android/youtube/core/async/i;

    .line 421
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->n:Lcom/google/android/youtube/core/client/a;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/client/a;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    .line 425
    :goto_39
    return-void

    .line 423
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->D()V

    goto :goto_39
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 782
    if-eqz p1, :cond_7

    .line 783
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->p:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    .line 785
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 786
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/x;->a(Z)V

    .line 716
    return-void
.end method

.method public final b(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 750
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 751
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->e:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 753
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/o;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 728
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/aj;->e()V

    .line 729
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/p;->f(Z)V

    .line 731
    :cond_15
    return-void
.end method

.method public final b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d(Z)V

    .line 821
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/player/p;->a(Z)V

    .line 822
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 735
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 737
    :cond_17
    return-void
.end method

.method public final c(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 825
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/p;->q:Z

    .line 826
    iget-object v3, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    if-nez p1, :cond_25

    move v0, v1

    :goto_9
    invoke-interface {v3, v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->e(Z)V

    .line 827
    iget-object v3, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_27

    move v0, v1

    :goto_1d
    if-eqz v0, :cond_29

    if-nez p1, :cond_29

    :goto_21
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->h(Z)V

    .line 828
    return-void

    :cond_25
    move v0, v2

    .line 826
    goto :goto_9

    :cond_27
    move v0, v2

    .line 827
    goto :goto_1d

    :cond_29
    move v1, v2

    goto :goto_21
.end method

.method public final d()V
    .registers 1

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->z()V

    .line 779
    return-void
.end method

.method public final d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 831
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/p;->I:Z

    .line 832
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 647
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->H:Z

    if-eqz v0, :cond_1b

    .line 648
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->w:Lcom/google/android/youtube/core/model/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->d:Landroid/net/Uri;

    if-eqz v0, :cond_17

    .line 649
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->B()V

    .line 661
    :goto_12
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->F:Z

    .line 662
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->H:Z

    .line 663
    return-void

    .line 651
    :cond_17
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->z()V

    goto :goto_12

    .line 653
    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->F:Z

    if-eqz v0, :cond_28

    .line 654
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/aj;->i()V

    .line 655
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->z()V

    goto :goto_12

    .line 656
    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->b()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 657
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->e()V

    goto :goto_12

    .line 659
    :cond_36
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->d()V

    goto :goto_12
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->e()V

    .line 667
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->B:Z

    .line 676
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->F:Z

    .line 677
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->F()V

    .line 678
    return-void
.end method

.method public final h()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 688
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/p;->B:Z

    .line 689
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/p;->F:Z

    .line 690
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 691
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Previous"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 692
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/p;->e(Z)V

    .line 694
    :cond_17
    return-void
.end method

.method public final i()V
    .registers 5

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->y:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->y:Z

    .line 698
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->y:Z

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->b(Z)V

    .line 699
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "HQ"

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->y:Z

    if-eqz v0, :cond_22

    const-string v0, "On"

    :goto_18
    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->v:Lcom/google/android/youtube/core/model/u;

    if-nez v0, :cond_25

    .line 707
    :goto_1f
    return-void

    .line 697
    :cond_20
    const/4 v0, 0x0

    goto :goto_5

    .line 699
    :cond_22
    const-string v0, "Off"

    goto :goto_18

    .line 704
    :cond_25
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->y:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->v:Lcom/google/android/youtube/core/model/u;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/u;->b:Lcom/google/android/youtube/core/model/Stream;

    .line 705
    :goto_2d
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    iget-boolean v3, v0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/client/aj;->a(Landroid/net/Uri;Z)V

    .line 706
    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/aq;->c()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/model/Stream;I)V

    goto :goto_1f

    .line 704
    :cond_42
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->v:Lcom/google/android/youtube/core/model/u;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/u;->c:Lcom/google/android/youtube/core/model/Stream;

    goto :goto_2d
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->k:Lcom/google/android/youtube/core/player/ad;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/ad;->a(Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public final k()V
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/x;->e()V

    .line 745
    return-void
.end method

.method public final l()V
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->K:Lcom/google/android/youtube/core/player/x;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/x;->c()V

    .line 741
    return-void
.end method

.method public final m()V
    .registers 1

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->D()V

    .line 562
    return-void
.end method

.method public final n()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 565
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->h:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->h()V

    .line 567
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->M:Z

    .line 568
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->F:Z

    if-eqz v0, :cond_1a

    .line 569
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/aj;->i()V

    .line 570
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->F:Z

    .line 571
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->z()V

    .line 576
    :goto_19
    return-void

    .line 573
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/aj;->g()V

    .line 574
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->d()V

    goto :goto_19
.end method

.method public final o()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_5
    const-string v1, "call init() first"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->b(ZLjava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->C:Lcom/google/android/youtube/core/async/a/a;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/p;->A:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 285
    return-void

    .line 283
    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final p()V
    .registers 1

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->A()V

    .line 404
    return-void
.end method

.method public final q()Z
    .registers 2

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->x:Z

    return v0
.end method

.method public final r()V
    .registers 2

    .prologue
    .line 582
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 583
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 584
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->e()V

    .line 588
    :goto_10
    return-void

    .line 586
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->d()V

    goto :goto_10
.end method

.method public final s()V
    .registers 2

    .prologue
    .line 594
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 595
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 596
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->e()V

    .line 598
    :cond_10
    return-void
.end method

.method public final t()V
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    if-eqz v0, :cond_c

    .line 767
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->l:Lcom/google/android/youtube/core/player/AdultContentHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdultContentHelper;->b()V

    .line 771
    :goto_b
    return-void

    .line 769
    :cond_c
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->z()V

    goto :goto_b
.end method

.method public final u()V
    .registers 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 775
    return-void
.end method

.method public final v()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 789
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->F:Z

    .line 790
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->x:Z

    if-eqz v0, :cond_9

    .line 791
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/p;->H:Z

    .line 793
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/aj;->h()V

    .line 794
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/p;->G()V

    .line 795
    return-void
.end method

.method public final w()V
    .registers 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->h()V

    .line 816
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->o:Lcom/google/android/youtube/core/client/aj;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/aj;->c()V

    .line 817
    return-void
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    goto :goto_5
.end method

.method public final y()I
    .registers 2

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/p;->x:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/player/p;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->c()I

    move-result v0

    goto :goto_5
.end method
