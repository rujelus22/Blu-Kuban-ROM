.class public Lcom/google/android/youtube/app/ui/ec;
.super Lcom/google/android/youtube/core/ui/q;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final a:Lcom/google/android/youtube/app/a;

.field private final b:Lcom/google/android/youtube/core/b/ai;

.field private final k:Lcom/google/android/youtube/core/async/c;

.field private final l:Z

.field private final m:Z

.field private final n:Lcom/google/android/youtube/core/Analytics;

.field private final o:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field private final p:Lcom/google/android/youtube/plus1/a;

.field private final q:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final r:Lcom/google/android/plus1/ac;

.field private final s:Ljava/util/Map;

.field private final t:Landroid/os/Handler;

.field private u:Z

.field private v:I

.field private w:Lcom/google/android/plus1/w;

.field private x:Ljava/util/Set;

.field private y:Z

.field private final z:Lcom/google/android/youtube/core/b/aj;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V
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
    .line 138
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

    invoke-direct/range {v0 .. v15}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/a;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V
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
    .line 155
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

    invoke-direct/range {v0 .. v15}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/a;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V
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
    .line 173
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

    invoke-direct/range {v0 .. v15}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/a;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/a;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V
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
    .line 122
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

    invoke-direct/range {v0 .. v15}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/a;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    .line 124
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/a;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V
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

    .line 198
    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/core/ui/q;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/d;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V

    .line 200
    const-string v1, "navigation may not be null"

    invoke-static {p4, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/a;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->a:Lcom/google/android/youtube/app/a;

    .line 201
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->t:Landroid/os/Handler;

    .line 202
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/ec;->l:Z

    .line 203
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/ec;->m:Z

    .line 204
    invoke-static/range {p9 .. p9}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/ai;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->b:Lcom/google/android/youtube/core/b/ai;

    .line 205
    new-instance v1, Lcom/google/android/youtube/app/ui/ef;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/ef;-><init>(Lcom/google/android/youtube/app/ui/ec;B)V

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->k:Lcom/google/android/youtube/core/async/c;

    .line 206
    const-string v1, "analytics may not be null"

    move-object/from16 v0, p12

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->n:Lcom/google/android/youtube/core/Analytics;

    .line 207
    const-string v1, "logCategory may not be null"

    move-object/from16 v0, p13

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->o:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 209
    invoke-interface {p5, p0}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    invoke-interface {p5, p0}, Lcom/google/android/youtube/core/ui/g;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 212
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/ec;->p:Lcom/google/android/youtube/plus1/a;

    .line 213
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ec;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 214
    new-instance v1, Lcom/google/android/youtube/app/ui/eg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/eg;-><init>(Lcom/google/android/youtube/app/ui/ec;B)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->r:Lcom/google/android/plus1/ac;

    .line 215
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->s:Ljava/util/Map;

    .line 216
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ec;->i()V

    .line 218
    const-string v1, "referrer may not be null"

    move-object/from16 v0, p14

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/aj;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->z:Lcom/google/android/youtube/core/b/aj;

    .line 219
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ec;)Lcom/google/android/youtube/core/a/d;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->h:Lcom/google/android/youtube/core/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ec;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->p:Lcom/google/android/youtube/plus1/a;

    invoke-interface {v0}, Lcom/google/android/youtube/plus1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->p:Lcom/google/android/youtube/plus1/a;

    invoke-interface {v0}, Lcom/google/android/youtube/plus1/a;->a()Lcom/google/android/plus1/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->w:Lcom/google/android/plus1/w;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->x:Ljava/util/Set;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->w:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->x:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ec;->r:Lcom/google/android/plus1/ac;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/plus1/w;->a(Ljava/util/Set;Lcom/google/android/plus1/ac;)V

    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->x:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/ec;->y:Z

    :goto_2e
    return-void

    :cond_2f
    iget v0, p0, Lcom/google/android/youtube/app/ui/ec;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/app/ui/ec;->v:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_48

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->t:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/ui/ee;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/ee;-><init>(Lcom/google/android/youtube/app/ui/ec;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    :cond_48
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ec;->j()V

    goto :goto_2e
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/ec;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ec;->j()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/ec;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/ec;)Lcom/google/android/youtube/core/a/d;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->h:Lcom/google/android/youtube/core/a/d;

    return-object v0
.end method

.method private i()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/ec;->y:Z

    if-eqz v0, :cond_7

    .line 347
    :goto_6
    return-void

    .line 326
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/youtube/app/ui/ec;->y:Z

    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->p:Lcom/google/android/youtube/plus1/a;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    if-eqz v0, :cond_27

    .line 328
    iput-boolean v2, p0, Lcom/google/android/youtube/app/ui/ec;->u:Z

    .line 329
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->x:Ljava/util/Set;

    .line 330
    iput v1, p0, Lcom/google/android/youtube/app/ui/ec;->v:I

    .line 331
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->q:Lcom/google/android/youtube/core/async/UserAuthorizer;

    new-instance v1, Lcom/google/android/youtube/app/ui/ed;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/ed;-><init>(Lcom/google/android/youtube/app/ui/ec;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    goto :goto_6

    .line 343
    :cond_27
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/ec;->u:Z

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->x:Ljava/util/Set;

    .line 345
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/ec;->y:Z

    goto :goto_6
.end method

.method private j()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 382
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/ec;->u:Z

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->x:Ljava/util/Set;

    .line 384
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 385
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/ec;->y:Z

    .line 386
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 228
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->h:Lcom/google/android/youtube/core/a/d;

    check-cast v0, Lcom/google/android/youtube/app/adapter/bt;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/bt;->b()Ljava/util/Map;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_20

    .line 307
    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bu;

    .line 308
    if-eqz v0, :cond_20

    .line 309
    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/bu;->b:Lcom/google/android/youtube/core/b/aj;

    .line 310
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->a:Lcom/google/android/youtube/app/a;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/youtube/app/ui/ec;->m:Z

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    .line 315
    :goto_1f
    return-void

    .line 314
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->a:Lcom/google/android/youtube/app/a;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/ec;->m:Z

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ec;->z:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    goto :goto_1f
.end method

.method public final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 235
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

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

    .line 238
    new-instance v0, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Page$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/app/ui/ec;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    .line 242
    :goto_27
    return-void

    .line 240
    :cond_28
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/q;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method protected a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/q;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
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

    .line 249
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->couldBeMusicVideo()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 250
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 253
    :cond_24
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->b:Lcom/google/android/youtube/core/b/ai;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ec;->k:Lcom/google/android/youtube/core/async/c;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ai;->a(Ljava/util/List;Lcom/google/android/youtube/core/async/l;)V

    .line 256
    :cond_31
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/ec;->u:Z

    if-eqz v0, :cond_62

    .line 257
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 258
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 259
    invoke-static {v0}, Lcom/google/android/youtube/plus1/c;->a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;

    move-result-object v3

    .line 260
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ec;->s:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 263
    :cond_59
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->x:Ljava/util/Set;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->x:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 265
    :cond_62
    :goto_62
    return-void

    .line 263
    :cond_63
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->w:Lcom/google/android/plus1/w;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ec;->r:Lcom/google/android/plus1/ac;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/plus1/w;->a(Ljava/util/Set;Lcom/google/android/plus1/ac;)V

    goto :goto_62
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/ec;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method protected a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 60
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/ec;->l:Z

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
    .line 60
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/ec;->a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/ec;->u:Z

    if-eqz v0, :cond_1c

    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->t:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->w:Lcom/google/android/plus1/w;

    if-eqz v0, :cond_17

    .line 393
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->w:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->r:Lcom/google/android/plus1/ac;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/ac;)V

    .line 394
    iput-object v2, p0, Lcom/google/android/youtube/app/ui/ec;->w:Lcom/google/android/plus1/w;

    .line 396
    :cond_17
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 398
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/ec;->y:Z

    .line 399
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ec;->i()V

    .line 400
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/q;->c()V

    .line 401
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 288
    :goto_6
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 289
    if-eqz v0, :cond_18

    .line 290
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ec;->n:Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ec;->o:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 291
    invoke-virtual {p0, p2, v0, p3}, Lcom/google/android/youtube/app/ui/ec;->a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V

    .line 293
    :cond_18
    return-void

    .line 287
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->h:Lcom/google/android/youtube/core/a/d;

    goto :goto_6
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 297
    :goto_6
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 298
    if-eqz v0, :cond_16

    .line 299
    invoke-virtual {p0, p2, v0}, Lcom/google/android/youtube/app/ui/ec;->a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    .line 301
    :goto_12
    return v0

    .line 296
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ec;->h:Lcom/google/android/youtube/core/a/d;

    goto :goto_6

    .line 301
    :cond_16
    const/4 v0, 0x1

    goto :goto_12
.end method
