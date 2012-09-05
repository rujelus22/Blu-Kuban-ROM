.class public Lcom/google/android/youtube/app/ui/cv;
.super Lcom/google/android/youtube/core/ui/q;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final a:Lcom/google/android/youtube/app/o;

.field private final b:Lcom/google/android/youtube/core/client/ag;

.field private final h:Lcom/google/android/youtube/core/async/a;

.field private final i:Z

.field private final j:Z

.field private final k:Lcom/google/android/youtube/core/Analytics;

.field private final l:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field private final m:Lcom/google/android/youtube/plus1/f;

.field private final n:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final o:Lcom/google/android/plus1/ac;

.field private final p:Ljava/util/Map;

.field private final q:Landroid/os/Handler;

.field private r:Z

.field private s:I

.field private t:Lcom/google/android/plus1/w;

.field private u:Ljava/util/Set;

.field private v:Z

.field private final w:Lcom/google/android/youtube/core/client/al;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V
    .registers 28
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
    .line 136
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    invoke-direct/range {v0 .. v15}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V
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

    .prologue
    .line 153
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V
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
    .line 171
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v0 .. v15}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V
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
    .line 120
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v0 .. v15}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    .line 122
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V
    .registers 24
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
    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p15

    .line 196
    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/core/ui/q;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/core/a/d;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;)V

    .line 198
    const-string v1, "navigation may not be null"

    invoke-static {p4, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/o;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->a:Lcom/google/android/youtube/app/o;

    .line 199
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->q:Landroid/os/Handler;

    .line 200
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/cv;->i:Z

    .line 201
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/cv;->j:Z

    .line 202
    invoke-static/range {p9 .. p9}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/client/ag;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->b:Lcom/google/android/youtube/core/client/ag;

    .line 203
    new-instance v1, Lcom/google/android/youtube/app/ui/cy;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/cy;-><init>(Lcom/google/android/youtube/app/ui/cv;)V

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->h:Lcom/google/android/youtube/core/async/a;

    .line 204
    const-string v1, "analytics may not be null"

    move-object/from16 v0, p12

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->k:Lcom/google/android/youtube/core/Analytics;

    .line 205
    const-string v1, "logCategory may not be null"

    move-object/from16 v0, p13

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->l:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 207
    invoke-interface {p5, p0}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    invoke-interface {p5, p0}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 210
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/cv;->m:Lcom/google/android/youtube/plus1/f;

    .line 211
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cv;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 212
    new-instance v1, Lcom/google/android/youtube/app/ui/cz;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/cz;-><init>(Lcom/google/android/youtube/app/ui/cv;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->o:Lcom/google/android/plus1/ac;

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->p:Ljava/util/Map;

    .line 214
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/cv;->b()V

    .line 216
    const-string v1, "referrer may not be null"

    move-object/from16 v0, p14

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/client/al;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->w:Lcom/google/android/youtube/core/client/al;

    .line 217
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cv;)Lcom/google/android/youtube/core/a/d;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->e:Lcom/google/android/youtube/core/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cv;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->m:Lcom/google/android/youtube/plus1/f;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/plus1/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->m:Lcom/google/android/youtube/plus1/f;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/plus1/f;->a(Ljava/lang/String;)Lcom/google/android/plus1/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->t:Lcom/google/android/plus1/w;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->u:Ljava/util/Set;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->t:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->u:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cv;->o:Lcom/google/android/plus1/ac;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/plus1/w;->a(Ljava/util/Set;Lcom/google/android/plus1/ac;)V

    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->u:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/cv;->v:Z

    :goto_2e
    return-void

    :cond_2f
    iget v0, p0, Lcom/google/android/youtube/app/ui/cv;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/app/ui/cv;->s:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_48

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->q:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/ui/cx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/cx;-><init>(Lcom/google/android/youtube/app/ui/cv;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    :cond_48
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/cv;->g()V

    goto :goto_2e
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 321
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/cv;->v:Z

    if-eqz v0, :cond_7

    .line 345
    :goto_6
    return-void

    .line 324
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/youtube/app/ui/cv;->v:Z

    .line 325
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->m:Lcom/google/android/youtube/plus1/f;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    if-eqz v0, :cond_27

    .line 326
    iput-boolean v2, p0, Lcom/google/android/youtube/app/ui/cv;->r:Z

    .line 327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->u:Ljava/util/Set;

    .line 328
    iput v1, p0, Lcom/google/android/youtube/app/ui/cv;->s:I

    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    new-instance v1, Lcom/google/android/youtube/app/ui/cw;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/cw;-><init>(Lcom/google/android/youtube/app/ui/cv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V

    goto :goto_6

    .line 341
    :cond_27
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/cv;->r:Z

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->u:Ljava/util/Set;

    .line 343
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/cv;->v:Z

    goto :goto_6
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/cv;)V
    .registers 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/cv;->g()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/cv;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->p:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/cv;)Lcom/google/android/youtube/core/a/d;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->e:Lcom/google/android/youtube/core/a/d;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 380
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/cv;->r:Z

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->u:Ljava/util/Set;

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 383
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/cv;->v:Z

    .line 384
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 226
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/cv;->r:Z

    if-eqz v0, :cond_1c

    .line 389
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->q:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->t:Lcom/google/android/plus1/w;

    if-eqz v0, :cond_17

    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->t:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->o:Lcom/google/android/plus1/ac;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/ac;)V

    .line 392
    iput-object v2, p0, Lcom/google/android/youtube/app/ui/cv;->t:Lcom/google/android/plus1/w;

    .line 394
    :cond_17
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 396
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/cv;->v:Z

    .line 397
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/cv;->b()V

    .line 398
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/q;->a()V

    .line 399
    return-void
.end method

.method protected a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->e:Lcom/google/android/youtube/core/a/d;

    check-cast v0, Lcom/google/android/youtube/app/a/x;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/a/x;->b()Ljava/util/Map;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_20

    .line 305
    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/a/y;

    .line 306
    if-eqz v0, :cond_20

    .line 307
    iget-object v0, v0, Lcom/google/android/youtube/app/a/y;->b:Lcom/google/android/youtube/core/client/al;

    .line 308
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->a:Lcom/google/android/youtube/app/o;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/youtube/app/ui/cv;->j:Z

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)V

    .line 313
    :goto_1f
    return-void

    .line 312
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->a:Lcom/google/android/youtube/app/o;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/cv;->j:Z

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cv;->w:Lcom/google/android/youtube/core/client/al;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)V

    goto :goto_1f
.end method

.method public final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 233
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    instance-of v0, p2, Lcom/google/android/youtube/core/async/GDataResponseException;

    if-eqz v0, :cond_28

    move-object v0, p2

    check-cast v0, Lcom/google/android/youtube/core/async/GDataResponseException;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsYouTubeSignupRequiredError()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 236
    new-instance v0, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Page$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    .line 240
    :goto_27
    return-void

    .line 238
    :cond_28
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/q;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method protected a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/q;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 247
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->couldBeMusicVideo()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 248
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 251
    :cond_24
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->b:Lcom/google/android/youtube/core/client/ag;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cv;->h:Lcom/google/android/youtube/core/async/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ag;->a(Ljava/util/List;Lcom/google/android/youtube/core/async/g;)V

    .line 254
    :cond_31
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/cv;->r:Z

    if-eqz v0, :cond_62

    .line 255
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 256
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 257
    invoke-static {v0}, Lcom/google/android/youtube/plus1/h;->a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;

    move-result-object v3

    .line 258
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/cv;->p:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 261
    :cond_59
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->u:Ljava/util/Set;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->u:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 263
    :cond_62
    :goto_62
    return-void

    .line 261
    :cond_63
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->t:Lcom/google/android/plus1/w;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cv;->o:Lcom/google/android/plus1/ac;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/plus1/w;->a(Ljava/util/Set;Lcom/google/android/plus1/ac;)V

    goto :goto_62
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method protected a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 58
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/cv;->i:Z

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected synthetic b(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 58
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 286
    :goto_6
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 287
    if-eqz v0, :cond_18

    .line 288
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cv;->k:Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cv;->l:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 289
    invoke-virtual {p0, p2, v0, p3}, Lcom/google/android/youtube/app/ui/cv;->a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V

    .line 291
    :cond_18
    return-void

    .line 285
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->e:Lcom/google/android/youtube/core/a/d;

    goto :goto_6
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 295
    :goto_6
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 296
    if-eqz v0, :cond_16

    .line 297
    invoke-virtual {p0, p2, v0}, Lcom/google/android/youtube/app/ui/cv;->a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    .line 299
    :goto_12
    return v0

    .line 294
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cv;->e:Lcom/google/android/youtube/core/a/d;

    goto :goto_6

    .line 299
    :cond_16
    const/4 v0, 0x1

    goto :goto_12
.end method
