.class public final Lcom/google/android/youtube/core/player/Director;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/ae;
.implements Lcom/google/android/youtube/core/player/b;
.implements Lcom/google/android/youtube/core/player/bh;
.implements Lcom/google/android/youtube/core/player/d;
.implements Lcom/google/android/youtube/core/player/o;


# instance fields
.field private A:Lcom/google/android/youtube/core/model/n;

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Lcom/google/android/youtube/core/model/UserAuth;

.field private F:Z

.field private G:Lcom/google/android/youtube/core/async/a/a;

.field private H:Lcom/google/android/youtube/core/async/n;

.field private I:Lcom/google/android/youtube/core/async/n;

.field private J:Z

.field private K:Z

.field private L:Z

.field private final M:Lcom/google/android/youtube/core/player/e;

.field private N:Z

.field private final O:Lcom/google/android/youtube/core/player/z;

.field private final P:Ljava/lang/String;

.field private volatile Q:Z

.field private R:Landroid/widget/Toast;

.field private S:Lcom/google/android/youtube/core/async/l;

.field private T:Lcom/google/android/youtube/core/async/l;

.field private U:Lcom/google/android/youtube/core/async/l;

.field private V:Lcom/google/android/youtube/core/async/l;

.field private W:Lcom/google/android/youtube/core/async/l;

.field private X:Landroid/os/Handler;

.field private final a:Lcom/google/android/youtube/core/player/bi;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/youtube/core/Analytics;

.field private final d:Lcom/google/android/youtube/core/b/ae;

.field private final e:Lcom/google/android/youtube/core/utils/k;

.field private final f:Lcom/google/android/youtube/core/b/al;

.field private final g:[Landroid/view/View;

.field private final h:Lcom/google/android/youtube/core/player/n;

.field private final i:Lcom/google/android/youtube/core/player/ControllerOverlay;

.field private final j:Lcom/google/android/youtube/core/player/a;

.field private final k:Lcom/google/android/youtube/core/player/LiveOverlay;

.field private final l:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

.field private final m:Lcom/google/android/youtube/core/player/ap;

.field private final n:Lcom/google/android/youtube/core/player/c;

.field private final o:Lcom/google/android/youtube/core/player/bd;

.field private final p:Lcom/google/android/youtube/core/b/a;

.field private final q:Lcom/google/android/youtube/core/b/an;

.field private final r:Lcom/google/android/youtube/core/player/an;

.field private final s:Lcom/google/android/youtube/core/d;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Lcom/google/android/youtube/core/model/Video;

.field private z:Lcom/google/android/youtube/core/model/t;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/a;Lcom/google/android/youtube/core/b/an;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/player/c;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/z;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/n;Lcom/google/android/youtube/core/player/ThumbnailOverlay;Lcom/google/android/youtube/core/player/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/core/player/an;Lcom/google/android/youtube/core/player/e;)V
    .registers 29
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-string v1, "player cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/bi;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    .line 241
    const-string v1, "activity cannot be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->b:Landroid/content/Context;

    .line 242
    const-string v1, "preferences cannot be null"

    invoke-static {p3, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "gdataClient cannot be null"

    invoke-static {p4, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/ae;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->d:Lcom/google/android/youtube/core/b/ae;

    .line 244
    iput-object p5, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/b/a;

    .line 245
    const-string v1, "statsClient cannot be null"

    invoke-static {p6, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/an;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    .line 246
    const-string v1, "subtitlesClient cannot be null"

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/al;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->f:Lcom/google/android/youtube/core/b/al;

    .line 247
    const-string v1, "adultContentHelper cannot be null"

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/c;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->n:Lcom/google/android/youtube/core/player/c;

    .line 248
    const-string v1, "analytics cannot be null"

    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->c:Lcom/google/android/youtube/core/Analytics;

    .line 249
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->P:Ljava/lang/String;

    .line 250
    const-string v1, "listener cannot be null"

    move-object/from16 v0, p11

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/z;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    .line 251
    const-string v1, "controllerOverlay cannot be null"

    move-object/from16 v0, p12

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/ControllerOverlay;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    .line 252
    const-string v1, "brandingOverlay cannot be null"

    move-object/from16 v0, p13

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/n;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->h:Lcom/google/android/youtube/core/player/n;

    .line 253
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->l:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    .line 254
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/a;

    .line 255
    const-string v1, "errorHelper cannot be null"

    move-object/from16 v0, p16

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/d;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->s:Lcom/google/android/youtube/core/d;

    .line 256
    const-string v1, "networkStatus cannot be null"

    move-object/from16 v0, p17

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/utils/k;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/utils/k;

    .line 257
    const-string v1, "streamSelector cannot be null"

    move-object/from16 v0, p18

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/an;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->r:Lcom/google/android/youtube/core/player/an;

    .line 258
    const-string v1, "autoplayHelper cannot be null"

    move-object/from16 v0, p19

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/e;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->M:Lcom/google/android/youtube/core/player/e;

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->F:Z

    .line 262
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/bi;->a()Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v8

    .line 264
    invoke-interface/range {p13 .. p13}, Lcom/google/android/youtube/core/player/n;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 266
    new-instance v4, Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-direct {v4, p2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;-><init>(Landroid/app/Activity;)V

    .line 271
    invoke-virtual {v8, v4}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 274
    if-eqz p15, :cond_19c

    const/4 v1, 0x3

    :goto_ce
    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->g:[Landroid/view/View;

    .line 276
    move-object/from16 v0, p12

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setListener(Lcom/google/android/youtube/core/player/o;)V

    .line 277
    invoke-interface/range {p12 .. p12}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a()Landroid/view/View;

    move-result-object v2

    .line 278
    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->g:[Landroid/view/View;

    const/4 v5, 0x0

    const/4 v1, 0x1

    aput-object v2, v3, v5

    .line 279
    invoke-virtual {v8, v2}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 281
    if-eqz p15, :cond_f8

    .line 283
    move-object/from16 v0, p15

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/player/a;->setListener(Lcom/google/android/youtube/core/player/b;)V

    .line 284
    invoke-interface/range {p15 .. p15}, Lcom/google/android/youtube/core/player/a;->a()Landroid/view/View;

    move-result-object v2

    .line 285
    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->g:[Landroid/view/View;

    const/4 v5, 0x1

    const/4 v1, 0x2

    aput-object v2, v3, v5

    .line 286
    invoke-virtual {v8, v2}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    :cond_f8
    move v7, v1

    .line 289
    const-string v1, "default_hq"

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_19f

    const/4 v1, 0x1

    :goto_103
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    .line 292
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    move-object/from16 v0, p12

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 294
    new-instance v1, Lcom/google/android/youtube/core/player/ap;

    new-instance v5, Lcom/google/android/youtube/core/player/aa;

    const/4 v2, 0x0

    invoke-direct {v5, p0, v2}, Lcom/google/android/youtube/core/player/aa;-><init>(Lcom/google/android/youtube/core/player/Director;B)V

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/core/player/ap;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/player/SubtitleOverlay;Lcom/google/android/youtube/core/player/ar;Lcom/google/android/youtube/core/b/al;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->m:Lcom/google/android/youtube/core/player/ap;

    .line 297
    new-instance v1, Lcom/google/android/youtube/core/player/bd;

    const-string v2, "warning_3d"

    const v3, 0x7f0b000b

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p2, p0, v2, v3}, Lcom/google/android/youtube/core/player/bd;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/bh;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->o:Lcom/google/android/youtube/core/player/bd;

    .line 300
    new-instance v1, Lcom/google/android/youtube/core/utils/ab;

    invoke-direct {v1}, Lcom/google/android/youtube/core/utils/ab;-><init>()V

    .line 302
    new-instance v2, Lcom/google/android/youtube/core/player/LiveOverlay;

    invoke-direct {v2, p2, v1, p0}, Lcom/google/android/youtube/core/player/LiveOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/core/player/ae;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/Director;->k:Lcom/google/android/youtube/core/player/LiveOverlay;

    .line 303
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->g:[Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->k:Lcom/google/android/youtube/core/player/LiveOverlay;

    aput-object v2, v1, v7

    .line 304
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->k:Lcom/google/android/youtube/core/player/LiveOverlay;

    invoke-virtual {v8, v1}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 306
    invoke-interface {p6}, Lcom/google/android/youtube/core/b/an;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/player/bi;->a(Landroid/os/Handler;)V

    .line 308
    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->R:Landroid/widget/Toast;

    .line 310
    new-instance v1, Lcom/google/android/youtube/core/player/t;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/t;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->S:Lcom/google/android/youtube/core/async/l;

    new-instance v1, Lcom/google/android/youtube/core/player/u;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/u;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->T:Lcom/google/android/youtube/core/async/l;

    new-instance v1, Lcom/google/android/youtube/core/player/v;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/v;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->U:Lcom/google/android/youtube/core/async/l;

    new-instance v1, Lcom/google/android/youtube/core/player/w;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/w;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->V:Lcom/google/android/youtube/core/async/l;

    new-instance v1, Lcom/google/android/youtube/core/player/x;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/x;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-static {v1}, Lcom/google/android/youtube/core/b/aa;->a(Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/b/aa;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->W:Lcom/google/android/youtube/core/async/l;

    new-instance v1, Lcom/google/android/youtube/core/player/y;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/y;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->X:Landroid/os/Handler;

    .line 311
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->X:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/player/bi;->a(Landroid/os/Handler;)V

    .line 312
    return-void

    .line 274
    :cond_19c
    const/4 v1, 0x2

    goto/16 :goto_ce

    .line 289
    :cond_19f
    invoke-interface/range {p17 .. p17}, Lcom/google/android/youtube/core/utils/k;->f()Z

    move-result v1

    if-eqz v1, :cond_1b4

    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b4

    invoke-interface/range {p17 .. p17}, Lcom/google/android/youtube/core/utils/k;->b()Z

    move-result v1

    if-nez v1, :cond_1b4

    const/4 v1, 0x1

    goto/16 :goto_103

    :cond_1b4
    const/4 v1, 0x0

    goto/16 :goto_103
.end method

.method private B()V
    .registers 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    if-nez v0, :cond_5

    .line 506
    :cond_4
    :goto_4
    return-void

    .line 490
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    if-eqz v0, :cond_1a

    .line 491
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d()V

    .line 492
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->l:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    if-eqz v0, :cond_4

    .line 493
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->l:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->a(Lcom/google/android/youtube/core/model/Video;)V

    goto :goto_4

    .line 496
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setLoading()V

    .line 497
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 498
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->V:Lcom/google/android/youtube/core/async/l;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/n;->a(Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/n;

    move-result-object v0

    .line 500
    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->H:Lcom/google/android/youtube/core/async/n;

    .line 501
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->d:Lcom/google/android/youtube/core/b/ae;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/b/ae;->b(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_4

    .line 503
    :cond_39
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->C()V

    goto :goto_4
.end method

.method private C()V
    .registers 5

    .prologue
    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->r:Lcom/google/android/youtube/core/player/an;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/bi;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/an;->a(Lcom/google/android/youtube/core/model/Video;Ljava/util/Set;)Lcom/google/android/youtube/core/model/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;
    :try_end_10
    .catch Lcom/google/android/youtube/core/player/MissingStreamException; {:try_start_0 .. :try_end_10} :catch_5f

    .line 539
    new-instance v0, Lcom/google/android/youtube/core/model/t;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/t;->c:Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/t;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    .line 543
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream;->isHD()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQisHD(Z)V

    .line 544
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/b/a;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video;->isMonetized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 545
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/b/a;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/b/a;->a(Z)V

    .line 546
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->T:Lcom/google/android/youtube/core/async/l;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/n;->a(Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/n;

    move-result-object v0

    .line 547
    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->H:Lcom/google/android/youtube/core/async/n;

    .line 548
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/b/a;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/b/a;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 552
    :goto_5e
    return-void

    .line 531
    :catch_5f
    move-exception v0

    .line 532
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->K:Z

    .line 533
    new-instance v1, Lcom/google/android/youtube/core/player/DirectorException;

    sget-object v2, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->NO_STREAMS:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->s:Lcom/google/android/youtube/core/d;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/youtube/core/player/DirectorException;-><init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/DirectorException;Z)V

    goto :goto_5e

    .line 550
    :cond_75
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->F()V

    goto :goto_5e
.end method

.method private D()V
    .registers 5

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/an;->a(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/n;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 573
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Z

    .line 575
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/z;->k()V

    .line 576
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 577
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/a;

    if-eqz v0, :cond_28

    .line 578
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/a;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/a;->a(Lcom/google/android/youtube/core/model/n;)V

    .line 581
    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/an;->a(Landroid/net/Uri;Z)V

    .line 583
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    new-instance v1, Lcom/google/android/youtube/core/model/Stream;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/model/Stream;)V

    .line 584
    return-void
.end method

.method private E()V
    .registers 3

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    if-eqz v0, :cond_c

    .line 607
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->CUED:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 615
    :goto_b
    return-void

    .line 608
    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 609
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->LIVE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    goto :goto_b

    .line 610
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 611
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    goto :goto_b

    .line 613
    :cond_34
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    goto :goto_b
.end method

.method private F()V
    .registers 6

    .prologue
    .line 618
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 620
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    .line 622
    :goto_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    .line 623
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/youtube/core/b/an;->a(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/n;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 624
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->E()V

    .line 625
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->h:Lcom/google/android/youtube/core/player/n;

    if-eqz v1, :cond_2f

    .line 626
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->h:Lcom/google/android/youtube/core/player/n;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/n;->b()V

    .line 628
    :cond_2f
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v1

    if-nez v1, :cond_47

    .line 629
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    iget-boolean v2, v2, Lcom/google/android/youtube/core/model/t;->a:Z

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setSupportsQualityToggle(Z)V

    .line 630
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 632
    :cond_47
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    iget-boolean v3, v0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/b/an;->a(Landroid/net/Uri;Z)V

    .line 633
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 634
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/bi;->b(Lcom/google/android/youtube/core/model/Stream;)V

    .line 641
    :goto_5d
    return-void

    .line 620
    :cond_5e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/t;->c:Lcom/google/android/youtube/core/model/Stream;

    goto :goto_b

    .line 635
    :cond_63
    iget v1, p0, Lcom/google/android/youtube/core/player/Director;->w:I

    if-lez v1, :cond_72

    .line 636
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    iget v2, p0, Lcom/google/android/youtube/core/player/Director;->w:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 637
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/Director;->w:I

    goto :goto_5d

    .line 639
    :cond_72
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/model/Stream;)V

    goto :goto_5d
.end method

.method private G()V
    .registers 3

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 829
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 830
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->e(Z)V

    .line 832
    :cond_13
    return-void
.end method

.method private H()V
    .registers 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    if-eqz v0, :cond_9

    .line 965
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->e()V

    .line 967
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->H:Lcom/google/android/youtube/core/async/n;

    if-eqz v0, :cond_12

    .line 968
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->H:Lcom/google/android/youtube/core/async/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/n;->a()V

    .line 970
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->I:Lcom/google/android/youtube/core/async/n;

    if-eqz v0, :cond_1b

    .line 971
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->I:Lcom/google/android/youtube/core/async/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/n;->a()V

    .line 973
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->o:Lcom/google/android/youtube/core/player/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bd;->b()V

    .line 974
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->n:Lcom/google/android/youtube/core/player/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/c;->b()V

    .line 975
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;
    .registers 5
    .parameter

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->P:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 989
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "androidcid"

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 991
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object p1

    .line 993
    :cond_22
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 995
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object p1

    .line 997
    :cond_59
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->l()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 998
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dnc"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 999
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object p1

    .line 1001
    :cond_7f
    return-object p1
.end method

.method public static a(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/a;Lcom/google/android/youtube/core/b/an;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/player/c;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/z;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/n;Lcom/google/android/youtube/core/player/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/core/player/an;Lcom/google/android/youtube/core/player/e;)Lcom/google/android/youtube/core/player/Director;
    .registers 39
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
    .parameter
    .parameter

    .prologue
    .line 211
    const-string v1, "adsClient cannot be null: use createAdFreeDirector"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "revShareClientId cannot be empty: use createAdFreeDirector"

    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 213
    const-string v1, "adOverlay cannot be empty: use createAdFreeDirector"

    move-object/from16 v0, p13

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v1, Lcom/google/android/youtube/core/player/Director;

    const/4 v15, 0x0

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

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    invoke-direct/range {v1 .. v20}, Lcom/google/android/youtube/core/player/Director;-><init>(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/a;Lcom/google/android/youtube/core/b/an;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/player/c;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/z;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/n;Lcom/google/android/youtube/core/player/ThumbnailOverlay;Lcom/google/android/youtube/core/player/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/core/player/an;Lcom/google/android/youtube/core/player/e;)V

    return-object v1
.end method

.method public static a(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/an;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/player/c;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/player/z;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/n;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/core/player/an;Lcom/google/android/youtube/core/player/e;)Lcom/google/android/youtube/core/player/Director;
    .registers 35
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
    .line 199
    new-instance v0, Lcom/google/android/youtube/core/player/Director;

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

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

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    invoke-direct/range {v0 .. v19}, Lcom/google/android/youtube/core/player/Director;-><init>(Lcom/google/android/youtube/core/player/bi;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/a;Lcom/google/android/youtube/core/b/an;Lcom/google/android/youtube/core/b/al;Lcom/google/android/youtube/core/player/c;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/z;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/n;Lcom/google/android/youtube/core/player/ThumbnailOverlay;Lcom/google/android/youtube/core/player/a;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/core/player/an;Lcom/google/android/youtube/core/player/e;)V

    return-object v0
.end method

.method private a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 325
    iput-object p3, p0, Lcom/google/android/youtube/core/player/Director;->x:Ljava/lang/String;

    .line 326
    iput p4, p0, Lcom/google/android/youtube/core/player/Director;->w:I

    .line 327
    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    .line 328
    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    .line 329
    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    .line 330
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/a/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    .line 331
    iput-object p2, p0, Lcom/google/android/youtube/core/player/Director;->E:Lcom/google/android/youtube/core/model/UserAuth;

    .line 332
    iput-boolean p5, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    .line 334
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->h()V

    .line 335
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->S:Lcom/google/android/youtube/core/async/l;

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/async/a/a;->a(Lcom/google/android/youtube/core/async/l;)V

    .line 336
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->E()V

    .line 337
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    if-nez v0, :cond_2d

    .line 338
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->f()V

    .line 341
    :cond_2d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->e(Z)V

    .line 342
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/LiveEvent;->isUpcoming()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d()V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->c()V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->k:Lcom/google/android/youtube/core/player/LiveOverlay;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/LiveOverlay;->a(Lcom/google/android/youtube/core/model/LiveEvent;)V

    :goto_15
    return-void

    :cond_16
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->C()V

    goto :goto_15
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/model/Video;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 69
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->EMPTY_PLAYLIST:Lcom/google/android/youtube/core/player/Director$StopReason;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/player/Director$StopReason;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->N:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->M:Lcom/google/android/youtube/core/player/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/e;->b(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->AUTOPLAY_DENIED:Lcom/google/android/youtube/core/player/Director$StopReason;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/player/Director$StopReason;)V

    goto :goto_b

    :cond_24
    iput-object v4, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/Director;->B:Z

    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/Director;->K:Z

    iput-object v4, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/Director;->v:Z

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v1}, Lcom/google/android/youtube/core/async/a/a;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHasNext(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v1}, Lcom/google/android/youtube/core/async/a/a;->d()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHasPrevious(Z)V

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->h()V

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->D:Ljava/lang/String;

    :cond_57
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v1, :cond_f2

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_6b

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-nez v0, :cond_f2

    :cond_6b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->K:Z

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    iget v1, v1, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v1, v2, :cond_9e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->b:Landroid/content/Context;

    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9e
    new-instance v1, Lcom/google/android/youtube/core/player/DirectorException;

    sget-object v2, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->BAD_STATE:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/core/player/DirectorException;-><init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/DirectorException;Z)V

    :goto_a8
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/model/Video;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->m:Lcom/google/android/youtube/core/player/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/ap;->a(Lcom/google/android/youtube/core/model/Video;)V

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->couldHaveBranding()Z

    move-result v0

    if-eqz v0, :cond_126

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->U:Lcom/google/android/youtube/core/async/l;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/n;->a(Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->I:Lcom/google/android/youtube/core/async/n;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->d:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->I:Lcom/google/android/youtube/core/async/n;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    :goto_c9
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->K:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->F:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->R:Landroid/widget/Toast;

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->R:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->X:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/core/player/s;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/s;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    :cond_f2
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    if-eqz v0, :cond_106

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->Q:Z

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->e()V

    goto :goto_a8

    :cond_100
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d()V

    goto :goto_a8

    :cond_106
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->f()Z

    move-result v0

    if-nez v0, :cond_118

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->o:Lcom/google/android/youtube/core/player/bd;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bd;->a()V

    goto :goto_a8

    :cond_118
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->n:Lcom/google/android/youtube/core/player/c;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/player/c;->a(Lcom/google/android/youtube/core/player/d;)V

    goto :goto_a8

    :cond_122
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    goto :goto_a8

    :cond_126
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    invoke-interface {v0, v4}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/model/Branding;)V

    goto :goto_c9
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/player/DirectorException;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/DirectorException;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/Director;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/youtube/core/player/DirectorException;

    sget-object v1, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->REQUEST_FAILED:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->s:Lcom/google/android/youtube/core/d;

    invoke-virtual {v2, p1}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/youtube/core/player/DirectorException;-><init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/DirectorException;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/Director;Ljava/lang/String;Lcom/google/android/youtube/core/model/n;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p2, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    if-eqz p2, :cond_c

    iget-object v0, p2, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->D()V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->F()V

    goto :goto_b
.end method

.method private a(Lcom/google/android/youtube/core/player/DirectorException;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->c:Lcom/google/android/youtube/core/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PlayCannotProceeed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/youtube/core/player/DirectorException;->reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;Z)V

    .line 776
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/DirectorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Ljava/lang/String;Z)V

    .line 777
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/player/DirectorException;)V

    .line 778
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/Director;)Z
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/Director;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/Director;->K:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/Director;)V
    .registers 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->G()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/Director;Ljava/lang/Exception;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->F()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/Director;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->c:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/Director;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/youtube/core/player/DirectorException;

    sget-object v1, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->REQUEST_FAILED:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->s:Lcom/google/android/youtube/core/d;

    invoke-virtual {v2, p1}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/youtube/core/player/DirectorException;-><init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/DirectorException;Z)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/Director;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->N:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/z;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/Director;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/Director;->f(Z)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/youtube/core/player/Director;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Landroid/content/Context;

    return-object v0
.end method

.method private e(Z)V
    .registers 3
    .parameter

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->H()V

    .line 387
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->g()V

    .line 389
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    if-nez v0, :cond_11

    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->f()V

    .line 392
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setLoading()V

    .line 393
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->h:Lcom/google/android/youtube/core/player/n;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/n;->c()V

    .line 394
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/a;

    if-eqz v0, :cond_24

    .line 395
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/a;->b()V

    .line 397
    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->k:Lcom/google/android/youtube/core/player/LiveOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/LiveOverlay;->a()V

    .line 398
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->l:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    if-eqz v0, :cond_32

    .line 399
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->l:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->a()V

    .line 401
    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/z;->g()V

    .line 403
    if-eqz p1, :cond_3f

    .line 404
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->a()V

    .line 408
    :goto_3e
    return-void

    .line 406
    :cond_3f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->b()V

    goto :goto_3e
.end method

.method static synthetic f(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method private f(Z)V
    .registers 3
    .parameter

    .prologue
    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Z

    .line 592
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/Director;->L:Z

    .line 593
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/a;

    if-eqz v0, :cond_e

    .line 594
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/a;->b()V

    .line 596
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->f()V

    .line 597
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->E()V

    .line 598
    if-nez p1, :cond_25

    .line 599
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/b/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/a;->a()V

    .line 600
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->h()V

    .line 601
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->F()V

    .line 603
    :cond_25
    return-void
.end method

.method static synthetic g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ThumbnailOverlay;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->l:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/core/player/Director;)Z
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Z

    return v0
.end method

.method static synthetic j(Lcom/google/android/youtube/core/player/Director;)Z
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->N:Z

    return v0
.end method

.method static synthetic k(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/e;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->M:Lcom/google/android/youtube/core/player/e;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/core/player/Director;)Z
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->K:Z

    return v0
.end method

.method static synthetic m(Lcom/google/android/youtube/core/player/Director;)Z
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Z

    return v0
.end method

.method static synthetic n(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/a;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/a;

    return-object v0
.end method

.method static synthetic o(Lcom/google/android/youtube/core/player/Director;)Z
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    return v0
.end method

.method static synthetic p(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/model/t;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    return-object v0
.end method

.method static synthetic q(Lcom/google/android/youtube/core/player/Director;)Z
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->L:Z

    return v0
.end method

.method static synthetic r(Lcom/google/android/youtube/core/player/Director;)V
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->Q:Z

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->F:Z

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->N:Z

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->G()V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d()V

    :goto_20
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->t:Z

    if-nez v0, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Z)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->VIDEO_ENDED:Lcom/google/android/youtube/core/player/Director$StopReason;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/player/Director$StopReason;)V

    goto :goto_12

    :cond_30
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->e()V

    goto :goto_20
.end method

.method static synthetic s(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ap;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->m:Lcom/google/android/youtube/core/player/ap;

    return-object v0
.end method

.method static synthetic t(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/utils/k;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/utils/k;

    return-object v0
.end method


# virtual methods
.method public final A()I
    .registers 2

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->d()I

    move-result v0

    goto :goto_5
.end method

.method public final a()V
    .registers 3

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/n;->g:Landroid/net/Uri;

    if-eqz v0, :cond_1d

    .line 875
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/b/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/a;->a()V

    .line 876
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->d()V

    .line 877
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->g:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 879
    :cond_1d
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/bi;->a(I)V

    .line 810
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->e()V

    .line 811
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 912
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_24

    move v0, v1

    .line 913
    :goto_7
    iget-object v4, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    if-nez v0, :cond_26

    move v3, v1

    :goto_c
    invoke-interface {v4, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setFullscreen(Z)V

    .line 914
    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    if-eqz v0, :cond_28

    iget-boolean v4, p0, Lcom/google/android/youtube/core/player/Director;->t:Z

    if-nez v4, :cond_28

    :goto_17
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setPortrait(Z)V

    .line 916
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/a;

    if-eqz v1, :cond_23

    .line 917
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/a;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/a;->setOrientation(Z)V

    .line 919
    :cond_23
    return-void

    :cond_24
    move v0, v2

    .line 912
    goto :goto_7

    :cond_26
    move v3, v2

    .line 913
    goto :goto_c

    :cond_28
    move v1, v2

    .line 914
    goto :goto_17
.end method

.method public final a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 376
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;IZ)V

    .line 377
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;IZ)V

    .line 355
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/SubtitleTrack;)V
    .registers 3
    .parameter

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->m:Lcom/google/android/youtube/core/player/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/ap;->a(Lcom/google/android/youtube/core/model/SubtitleTrack;)V

    .line 863
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->s:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 944
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->ADULT_CONTENT_ERROR:Lcom/google/android/youtube/core/player/Director$StopReason;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/player/Director$StopReason;)V

    .line 945
    return-void
.end method

.method public final a(Z)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 380
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_6
    const-string v1, "call init() first"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 381
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->E:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->x:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/youtube/core/player/Director;->w:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;IZ)V

    .line 382
    return-void

    :cond_18
    move v0, v5

    .line 380
    goto :goto_6
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/n;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 883
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->f()V

    .line 885
    :cond_11
    return-void
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    if-eqz v0, :cond_d

    .line 729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    .line 730
    iput p1, p0, Lcom/google/android/youtube/core/player/Director;->w:I

    .line 731
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    .line 735
    :cond_c
    :goto_c
    return-void

    .line 732
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Z

    if-nez v0, :cond_c

    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/bi;->a(I)V

    goto :goto_c
.end method

.method public final b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setFullscreen(Z)V

    .line 1006
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/player/Director;->c(Z)V

    .line 1007
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/n;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 889
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->g()V

    .line 890
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->f(Z)V

    .line 892
    :cond_15
    return-void
.end method

.method public final c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/z;->b(Z)V

    .line 871
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/n;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 896
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->e()V

    .line 897
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 899
    :cond_1c
    return-void
.end method

.method public final d(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1010
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/Director;->t:Z

    .line 1011
    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    if-nez p1, :cond_25

    move v0, v1

    :goto_9
    invoke-interface {v3, v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setShowFullscreen(Z)V

    .line 1012
    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setPortrait(Z)V

    .line 1013
    return-void

    :cond_25
    move v0, v2

    .line 1011
    goto :goto_9

    :cond_27
    move v0, v2

    .line 1012
    goto :goto_1d

    :cond_29
    move v1, v2

    goto :goto_21
.end method

.method public final e()V
    .registers 1

    .prologue
    .line 935
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    .line 936
    return-void
.end method

.method public final f()V
    .registers 4

    .prologue
    .line 857
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->f:Lcom/google/android/youtube/core/b/al;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->W:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/al;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 859
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/z;->i()V

    .line 903
    return-void
.end method

.method public final h()V
    .registers 5

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    .line 845
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 846
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "HQ"

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    if-eqz v0, :cond_22

    const-string v0, "On"

    :goto_18
    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    if-nez v0, :cond_25

    .line 854
    :goto_1f
    return-void

    .line 844
    :cond_20
    const/4 v0, 0x0

    goto :goto_5

    .line 846
    :cond_22
    const-string v0, "Off"

    goto :goto_18

    .line 851
    :cond_25
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->C:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    .line 852
    :goto_2d
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    iget-boolean v3, v0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/b/an;->a(Landroid/net/Uri;Z)V

    .line 853
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/bi;->d()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/model/Stream;I)V

    goto :goto_1f

    .line 851
    :cond_42
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->z:Lcom/google/android/youtube/core/model/t;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/t;->c:Lcom/google/android/youtube/core/model/Stream;

    goto :goto_2d
.end method

.method public final i()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 822
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->F:Z

    .line 823
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    .line 824
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->G()V

    .line 825
    return-void
.end method

.method public final j()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 783
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    if-eqz v0, :cond_f

    .line 784
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    .line 785
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    .line 800
    :goto_a
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    .line 801
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->L:Z

    .line 802
    return-void

    .line 786
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->L:Z

    if-eqz v0, :cond_25

    .line 787
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Lcom/google/android/youtube/core/model/n;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    if-eqz v0, :cond_21

    .line 788
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->D()V

    goto :goto_a

    .line 790
    :cond_21
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    goto :goto_a

    .line 792
    :cond_25
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    if-eqz v0, :cond_32

    .line 793
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->k()V

    .line 794
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    goto :goto_a

    .line 795
    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->c()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 796
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->f()V

    goto :goto_a

    .line 798
    :cond_40
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->e()V

    goto :goto_a
.end method

.method public final k()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 835
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/Director;->F:Z

    .line 836
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    .line 837
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/async/a/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 838
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->c:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Previous"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 839
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/Director;->e(Z)V

    .line 841
    :cond_17
    return-void
.end method

.method public final l()V
    .registers 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->ADULT_CONTENT_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/player/Director$StopReason;)V

    .line 940
    return-void
.end method

.method public final m()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 669
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 670
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->f()V

    .line 671
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->Q:Z

    .line 673
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    if-eqz v0, :cond_15

    .line 674
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    .line 675
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    .line 684
    :goto_14
    return-void

    .line 676
    :cond_15
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    if-eqz v0, :cond_24

    .line 677
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->k()V

    .line 678
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    .line 679
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    goto :goto_14

    .line 681
    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->i()V

    .line 682
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->e()V

    goto :goto_14
.end method

.method public final n()V
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setLoading()V

    .line 665
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->F()V

    .line 666
    return-void
.end method

.method public final o()V
    .registers 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->f()V

    .line 806
    return-void
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/z;->j()V

    .line 907
    return-void
.end method

.method public final q()V
    .registers 1

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->C()V

    .line 526
    return-void
.end method

.method public final r()Z
    .registers 2

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Z

    return v0
.end method

.method public final s()V
    .registers 2

    .prologue
    .line 690
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 691
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    if-eqz v0, :cond_e

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    .line 693
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    .line 699
    :goto_d
    return-void

    .line 694
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 695
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->f()V

    goto :goto_d

    .line 697
    :cond_1c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->e()V

    goto :goto_d
.end method

.method public final t()V
    .registers 2

    .prologue
    .line 715
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 716
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    if-eqz v0, :cond_e

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->u:Z

    .line 718
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    .line 722
    :cond_d
    :goto_d
    return-void

    .line 719
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 720
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->e()V

    goto :goto_d
.end method

.method public final u()[Landroid/view/View;
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->g:[Landroid/view/View;

    return-object v0
.end method

.method public final v()V
    .registers 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    if-eqz v0, :cond_c

    .line 924
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->n:Lcom/google/android/youtube/core/player/c;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/player/c;->a(Lcom/google/android/youtube/core/player/d;)V

    .line 928
    :goto_b
    return-void

    .line 926
    :cond_c
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->B()V

    goto :goto_b
.end method

.method public final w()V
    .registers 3

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->O:Lcom/google/android/youtube/core/player/z;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->BANDWIDTH_WARNING_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/player/Director$StopReason;)V

    .line 932
    return-void
.end method

.method public final x()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 948
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->J:Z

    .line 949
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Z

    if-eqz v0, :cond_9

    .line 950
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->L:Z

    .line 952
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->j()V

    .line 953
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->H()V

    .line 954
    return-void
.end method

.method public final y()V
    .registers 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->m:Lcom/google/android/youtube/core/player/ap;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/ap;->a()V

    .line 979
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->i()V

    .line 980
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/b/an;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/an;->c()V

    .line 981
    return-void
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    goto :goto_5
.end method
