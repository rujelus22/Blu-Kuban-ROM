.class public Lcom/google/googlenav/android/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/clientparam/i;


# static fields
.field private static final s:Ljava/util/List;


# instance fields
.field private final a:Lcom/google/googlenav/android/AndroidGmmApplication;

.field private final b:Lat/p;

.field private final c:Lat/u;

.field private final d:Lcom/google/googlenav/ui/v;

.field private final e:Lac/h;

.field private final f:Lcom/google/googlenav/ui/android/L;

.field private final g:Lcom/google/googlenav/android/Y;

.field private final h:Lcom/google/googlenav/layer/r;

.field private final i:Lcom/google/googlenav/android/d;

.field private final j:LaD/k;

.field private final k:Lcom/google/googlenav/prefetch/android/A;

.field private final l:LaD/i;

.field private m:Landroid/view/Menu;

.field private n:Lcom/google/android/maps/MapsActivity;

.field private o:Lcom/google/android/maps/A;

.field private p:Z

.field private final q:Laf/b;

.field private final r:[Laf/b;

.field private t:Ljava/util/Locale;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 265
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/i;->s:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/AndroidGmmApplication;LY/c;Lac/h;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/i;->m:Landroid/view/Menu;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/i;->o:Lcom/google/android/maps/A;

    .line 183
    new-instance v0, Laf/l;

    const v1, 0x13d655

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Laf/l;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->q:Laf/b;

    .line 194
    const/4 v0, 0x4

    new-array v0, v0, [Laf/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/android/i;->q:Laf/b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Laf/i;->a:Laf/i;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Laf/g;->a:Laf/g;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Laf/h;->a:Laf/h;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/googlenav/android/i;->r:[Laf/b;

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/i;->u:Z

    .line 311
    const-string v0, "AndroidState.AndroidState"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/google/googlenav/android/i;->s:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-direct {p0}, Lcom/google/googlenav/android/i;->s()V

    .line 315
    iput-object p1, p0, Lcom/google/googlenav/android/i;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    .line 316
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v8

    .line 318
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    .line 320
    invoke-direct {p0}, Lcom/google/googlenav/android/i;->q()V

    .line 322
    invoke-virtual {v0}, Lcom/google/googlenav/K;->al()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 324
    invoke-static {p1}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    .line 327
    :cond_5f
    invoke-static {p0}, Lcom/google/googlenav/clientparam/f;->a(Lcom/google/googlenav/clientparam/i;)V

    .line 329
    new-instance v0, Lcom/google/googlenav/android/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/d;-><init>(Lcom/google/googlenav/android/i;)V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->i:Lcom/google/googlenav/android/d;

    .line 333
    iput-object p3, p0, Lcom/google/googlenav/android/i;->e:Lac/h;

    .line 334
    iget-object v0, p0, Lcom/google/googlenav/android/i;->e:Lac/h;

    invoke-virtual {v0}, Lac/h;->g()V

    .line 341
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/android/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/googlenav/android/j;-><init>(Lcom/google/googlenav/android/i;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    .line 350
    const/16 v0, 0xb

    invoke-static {v0}, LaT/k;->a(I)V

    .line 352
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/i;->a(Landroid/content/Context;)V

    .line 354
    new-instance v0, Lcom/google/googlenav/ui/android/L;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/android/L;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->f:Lcom/google/googlenav/ui/android/L;

    .line 355
    new-instance v0, Lcom/google/googlenav/android/Y;

    invoke-direct {v0}, Lcom/google/googlenav/android/Y;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->g:Lcom/google/googlenav/android/Y;

    .line 363
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v6

    .line 364
    invoke-virtual {v6}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 365
    new-instance v0, Lau/a;

    invoke-virtual {p1}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10

    const/high16 v3, 0x8

    const/high16 v4, 0x10

    invoke-virtual {v6}, Lcom/google/googlenav/K;->g()Lat/B;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/googlenav/K;->h()Lat/Y;

    move-result-object v6

    const/16 v7, 0x190

    invoke-direct/range {v0 .. v7}, Lau/a;-><init>(Landroid/content/Context;IIILat/B;Lat/Y;I)V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    .line 383
    :goto_b8
    iget-object v0, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    iget-object v1, p0, Lcom/google/googlenav/android/i;->f:Lcom/google/googlenav/ui/android/L;

    invoke-virtual {v0, v1}, Lat/p;->a(LZ/d;)V

    .line 385
    new-instance v0, Lcom/google/googlenav/layer/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/layer/b;-><init>(Lcom/google/googlenav/android/i;)V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->h:Lcom/google/googlenav/layer/r;

    .line 387
    invoke-static {}, Lcom/google/googlenav/K;->D()Z

    move-result v0

    if-eqz v0, :cond_187

    .line 390
    invoke-static {}, Lcom/google/googlenav/prefetch/android/B;->d()Lcom/google/googlenav/prefetch/android/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/i;->j:LaD/k;

    .line 391
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/android/n;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/n;-><init>(Lcom/google/googlenav/android/i;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 397
    new-instance v0, Lcom/google/googlenav/prefetch/android/A;

    iget-object v1, p0, Lcom/google/googlenav/android/i;->j:LaD/k;

    invoke-direct {v0, v1}, Lcom/google/googlenav/prefetch/android/A;-><init>(LaD/k;)V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->k:Lcom/google/googlenav/prefetch/android/A;

    .line 400
    new-instance v0, Lcom/google/googlenav/prefetch/android/s;

    const-class v1, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/prefetch/android/s;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->l:LaD/i;

    .line 402
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/android/o;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/o;-><init>(Lcom/google/googlenav/android/i;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 414
    :goto_f8
    invoke-direct {p0}, Lcom/google/googlenav/android/i;->r()V

    .line 416
    iget-object v0, p0, Lcom/google/googlenav/android/i;->g:Lcom/google/googlenav/android/Y;

    invoke-static {p1, v0}, Las/a;->a(Landroid/content/Context;Lcom/google/googlenav/android/Y;)Las/f;

    .line 420
    new-instance v0, LaB/a;

    new-instance v1, Lcom/google/googlenav/android/p;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/p;-><init>(Lcom/google/googlenav/android/i;)V

    invoke-virtual {v8}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LaB/a;-><init>(LaB/e;Lcom/google/googlenav/common/a;)V

    invoke-static {v0}, LaB/h;->a(LaB/h;)V

    .line 445
    new-instance v1, Lcom/google/googlenav/android/w;

    invoke-direct {v1, p0, p2}, Lcom/google/googlenav/android/w;-><init>(Lcom/google/googlenav/android/i;LY/c;)V

    .line 452
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 453
    new-instance v7, LaN/i;

    invoke-direct {v7}, LaN/i;-><init>()V

    .line 454
    iget-object v0, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    check-cast v0, Lau/a;

    .line 455
    const/4 v4, 0x0

    .line 456
    const/4 v5, 0x0

    .line 457
    new-instance v2, Lau/e;

    invoke-virtual {v0}, Lau/a;->w()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v3

    iget-object v6, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    invoke-virtual {v6}, Lat/p;->b()Lat/H;

    move-result-object v6

    iget-object v8, p0, Lcom/google/googlenav/android/i;->g:Lcom/google/googlenav/android/Y;

    invoke-direct {v2, v3, v0, v6, v8}, Lau/e;-><init>(Lcom/google/android/maps/driveabout/vector/dI;Lau/a;Lat/H;Lcom/google/googlenav/android/Y;)V

    iput-object v2, p0, Lcom/google/googlenav/android/i;->c:Lat/u;

    .line 468
    :goto_13e
    new-instance v0, Lcom/google/googlenav/ui/v;

    iget-object v2, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    iget-object v3, p0, Lcom/google/googlenav/android/i;->c:Lat/u;

    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/v;-><init>(Lcom/google/googlenav/ui/aB;Lat/p;Lat/u;Lcom/google/googlenav/ui/bK;Lcom/google/googlenav/ui/s;Lan/h;LaM/at;)V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->d:Lcom/google/googlenav/ui/v;

    .line 472
    iget-object v0, p0, Lcom/google/googlenav/android/i;->r:[Laf/b;

    invoke-static {p3, v0}, Laf/c;->a(Lac/h;[Laf/b;)V

    .line 475
    new-instance v0, Lcom/google/googlenav/android/y;

    invoke-direct {v0}, Lcom/google/googlenav/android/y;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/android/y;->a()V

    .line 477
    iget-object v0, p0, Lcom/google/googlenav/android/i;->d:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/ui/v;)V

    .line 478
    const-string v0, "AndroidState.AndroidState"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 479
    return-void

    .line 375
    :cond_165
    const/high16 v1, 0x10

    invoke-static {}, Lcom/google/googlenav/ui/bn;->O()Z

    move-result v0

    if-eqz v0, :cond_185

    const/4 v0, 0x2

    :goto_16e
    mul-int/2addr v1, v0

    .line 376
    new-instance v0, Lat/p;

    const/4 v2, -0x1

    const/high16 v3, 0x10

    invoke-virtual {v6}, Lcom/google/googlenav/K;->g()Lat/B;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/googlenav/K;->h()Lat/Y;

    move-result-object v5

    const/16 v6, 0x190

    invoke-direct/range {v0 .. v6}, Lat/p;-><init>(IIILat/B;Lat/Y;I)V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    goto/16 :goto_b8

    .line 375
    :cond_185
    const/4 v0, 0x1

    goto :goto_16e

    .line 409
    :cond_187
    new-instance v0, LaD/f;

    invoke-direct {v0}, LaD/f;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->j:LaD/k;

    .line 410
    new-instance v0, LaD/e;

    invoke-direct {v0}, LaD/e;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/i;->l:LaD/i;

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/i;->k:Lcom/google/googlenav/prefetch/android/A;

    goto/16 :goto_f8

    .line 460
    :cond_19a
    new-instance v7, LaM/at;

    invoke-direct {v7}, LaM/at;-><init>()V

    .line 461
    iget-object v0, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aB;->a(Lat/p;)Lcom/google/googlenav/ui/bK;

    move-result-object v4

    .line 462
    iget-object v0, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aB;->b(Lat/p;)Lcom/google/googlenav/ui/s;

    move-result-object v5

    .line 463
    const/4 v0, 0x1

    .line 464
    new-instance v2, Lat/h;

    iget-object v3, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    invoke-direct {v2, v3, v4, v5, v0}, Lat/h;-><init>(Lat/p;Lcom/google/googlenav/ui/bK;Lcom/google/googlenav/ui/s;Z)V

    iput-object v2, p0, Lcom/google/googlenav/android/i;->c:Lat/u;

    goto :goto_13e
.end method

.method static synthetic a(Lcom/google/googlenav/android/i;)LaD/k;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/i;->j:LaD/k;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/android/a;)Landroid/app/ProgressDialog;
    .registers 5
    .parameter

    .prologue
    .line 979
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 980
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 981
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 982
    iget-object v1, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 983
    new-instance v1, Lcom/google/googlenav/android/k;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/android/k;-><init>(Lcom/google/googlenav/android/i;Lcom/google/googlenav/ui/android/a;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 993
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 568
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 570
    invoke-static {p1}, Lcom/google/googlenav/android/i;->b(Landroid/content/Context;)Z

    move-result v3

    .line 571
    new-instance v4, Lap/a;

    if-nez v3, :cond_47

    move v0, v1

    :goto_f
    invoke-direct {v4, v0}, Lap/a;-><init>(Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    if-eqz v3, :cond_52

    .line 573
    new-instance v0, Lan/r;

    invoke-direct {v0, p1}, Lan/r;-><init>(Landroid/content/Context;)V

    .line 574
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->u()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 575
    new-instance v3, Laq/h;

    invoke-direct {v3, p1, v0}, Laq/h;-><init>(Landroid/content/Context;Lan/B;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :goto_2e
    new-instance v0, Lan/l;

    invoke-direct {v0, v1, v2}, Lan/l;-><init>(ZLjava/util/List;)V

    .line 596
    invoke-static {v0}, Lan/l;->a(Lan/l;)V

    .line 600
    new-instance v0, Lao/a;

    invoke-direct {v0}, Lao/a;-><init>()V

    .line 601
    invoke-static {v0}, Lao/b;->a(Lao/c;)V

    .line 605
    new-instance v0, Lar/a;

    invoke-direct {v0}, Lar/a;-><init>()V

    invoke-static {v0}, Lar/c;->a(Lar/d;)V

    .line 606
    return-void

    .line 571
    :cond_47
    const/4 v0, 0x0

    goto :goto_f

    .line 578
    :cond_49
    new-instance v3, Lan/a;

    invoke-direct {v3, p1, v0}, Lan/a;-><init>(Landroid/content/Context;Lan/B;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 583
    :cond_52
    const-string v0, "nlp_state"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_2e
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/android/AndroidGmmApplication;)V
    .registers 8
    .parameter

    .prologue
    .line 288
    const-class v1, Lcom/google/googlenav/android/i;

    monitor-enter v1

    :try_start_3
    const-string v0, "AndroidState.setUpSharedState"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/google/googlenav/K;->al()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 294
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->al()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 295
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/K;->a(Z)V

    .line 299
    :cond_20
    invoke-virtual {p0}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dD;->b:[Lcom/google/android/maps/driveabout/vector/dg;

    const-string v3, "GMM"

    const v4, 0x7f070003

    new-instance v5, Lcom/google/googlenav/android/I;

    invoke-virtual {p0}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/googlenav/android/I;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/dD;->a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/dg;Ljava/lang/String;ILaT/o;)V

    .line 305
    :cond_37
    invoke-static {p0}, Lcom/google/googlenav/android/F;->a(Landroid/app/Application;)V

    .line 306
    const-string v0, "AndroidState.setUpSharedState"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_41

    .line 307
    monitor-exit v1

    return-void

    .line 288
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/googlenav/android/i;Lcom/google/googlenav/android/x;Landroid/app/ProgressDialog;ZLac/q;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/android/x;Landroid/app/ProgressDialog;ZLac/q;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/i;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/android/x;Landroid/app/ProgressDialog;ZLac/q;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 875
    const/4 v6, 0x1

    .line 876
    iget-object v7, p0, Lcom/google/googlenav/android/i;->g:Lcom/google/googlenav/android/Y;

    new-instance v0, Lcom/google/googlenav/android/v;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/android/v;-><init>(Lcom/google/googlenav/android/i;Landroid/app/ProgressDialog;ZLcom/google/googlenav/android/x;Lac/q;)V

    invoke-virtual {v7, v0, v6}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 909
    return-void
.end method

.method public static a(Lcom/google/googlenav/ui/v;)V
    .registers 1
    .parameter

    .prologue
    .line 1173
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1053
    :goto_8
    return-void

    .line 1005
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1008
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1}, Lac/h;->y()Ljava/lang/Throwable;

    move-result-object v1

    .line 1009
    if-eqz v1, :cond_1d

    .line 1013
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1016
    :cond_1d
    const v1, 0x7f0d014c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1017
    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1020
    :cond_2f
    invoke-static {}, Lcom/google/googlenav/android/F;->f()Z

    move-result v1

    if-nez v1, :cond_74

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unavailable. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Check that the server is up and that you have a network connection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1037
    :goto_59
    const v1, 0x7f0d0115

    new-instance v2, Lcom/google/googlenav/android/l;

    invoke-direct {v2, p0}, Lcom/google/googlenav/android/l;-><init>(Lcom/google/googlenav/android/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1044
    new-instance v1, Lcom/google/googlenav/android/m;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/m;-><init>(Lcom/google/googlenav/android/i;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1052
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_8

    .line 1025
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong remote strings version, or no network connection, or the GMM Server is down.  GMM Server must be hosting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_59

    .line 1035
    :cond_93
    const v1, 0x7f0d014b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_59
.end method

.method private a(Ljava/lang/String;Lcom/google/googlenav/android/x;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    new-instance v3, Lcom/google/googlenav/ui/android/a;

    invoke-direct {v3, p1}, Lcom/google/googlenav/ui/android/a;-><init>(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/a;->b()Z

    move-result v0

    .line 821
    if-eqz v0, :cond_35

    .line 826
    if-eqz p3, :cond_33

    .line 828
    invoke-direct {p0, v3}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/ui/android/a;)Landroid/app/ProgressDialog;

    move-result-object v5

    .line 829
    invoke-static {v5}, Lcom/google/googlenav/ui/android/G;->b(Landroid/app/Dialog;)V

    .line 837
    :goto_14
    iget-object v0, p0, Lcom/google/googlenav/android/i;->e:Lac/h;

    invoke-virtual {v0}, Lac/h;->f()Z

    move-result v6

    .line 841
    if-eqz v6, :cond_21

    .line 842
    iget-object v0, p0, Lcom/google/googlenav/android/i;->e:Lac/h;

    invoke-virtual {v0}, Lac/h;->h()V

    .line 848
    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/android/i;->e:Lac/h;

    invoke-virtual {v0, v3}, Lac/h;->a(Lac/q;)V

    .line 851
    new-instance v0, Lcom/google/googlenav/android/u;

    const-string v2, "RemoteStrings"

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/android/u;-><init>(Lcom/google/googlenav/android/i;Ljava/lang/String;Lcom/google/googlenav/ui/android/a;Lcom/google/googlenav/android/x;Landroid/app/ProgressDialog;Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/android/u;->start()V

    .line 868
    :goto_32
    return-void

    .line 831
    :cond_33
    const/4 v5, 0x0

    goto :goto_14

    .line 863
    :cond_35
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/android/a;->a(Z)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/Config;->a([Ljava/lang/String;)V

    .line 865
    invoke-direct {p0}, Lcom/google/googlenav/android/i;->t()V

    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/i;->p:Z

    goto :goto_32
.end method

.method static synthetic a(Lcom/google/googlenav/android/i;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/google/googlenav/android/i;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/android/i;)LaD/i;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/i;->l:LaD/i;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 612
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->a()Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isAndroidNativeNetworkLocationProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/google/android/location/clientlib/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lap/a;->u()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic c(Lcom/google/googlenav/android/i;)Lcom/google/android/maps/MapsActivity;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/android/AndroidGmmApplication;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/i;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/android/i;)Lac/h;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/i;->e:Lac/h;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/android/i;)V
    .registers 1
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/googlenav/android/i;->t()V

    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/android/d;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/i;->i:Lcom/google/googlenav/android/d;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/ui/android/L;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/i;->f:Lcom/google/googlenav/ui/android/L;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/i;->g:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/layer/r;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/i;->h:Lcom/google/googlenav/layer/r;

    return-object v0
.end method

.method static synthetic k(Lcom/google/googlenav/android/i;)Lat/p;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    return-object v0
.end method

.method private p()[Lak/f;
    .registers 4

    .prologue
    .line 207
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    .line 208
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 211
    sget-object v2, Lak/h;->a:Lak/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 222
    sget-object v0, Lak/a;->a:Lak/a;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1a
    sget-object v0, Lak/c;->a:Lak/c;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-nez v0, :cond_49

    .line 245
    :goto_25
    iget-object v0, p0, Lcom/google/googlenav/android/i;->t:Ljava/util/Locale;

    if-eqz v0, :cond_3c

    .line 246
    iget-object v0, p0, Lcom/google/googlenav/android/i;->t:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 247
    if-eqz v0, :cond_3c

    .line 248
    sget-object v0, Lak/e;->a:Lak/e;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lak/f;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lak/f;

    return-object v0

    .line 231
    :cond_49
    sget-object v0, Lal/b;->a:Lal/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lak/j;->a:Lak/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lak/d;->a:Lak/d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25
.end method

.method private q()V
    .registers 5

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 531
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->M()Z

    move-result v1

    if-nez v1, :cond_30

    .line 532
    const-string v0, "UserAgentPref"

    invoke-static {v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 535
    :goto_12
    if-eqz v1, :cond_22

    .line 536
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->l()Lcom/google/googlenav/common/io/g;

    move-result-object v0

    check-cast v0, LV/a;

    invoke-virtual {v0, v1}, LV/a;->a(Ljava/lang/String;)V

    .line 559
    :goto_21
    return-void

    .line 546
    :cond_22
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/android/r;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/googlenav/android/r;-><init>(Lcom/google/googlenav/android/i;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    goto :goto_21

    :cond_30
    move-object v1, v0

    goto :goto_12
.end method

.method private r()V
    .registers 3

    .prologue
    .line 562
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->o()LS/b;

    move-result-object v0

    check-cast v0, LS/k;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, LS/k;->a(LS/l;)V

    .line 564
    new-instance v0, LaM/al;

    invoke-direct {v0}, LaM/al;-><init>()V

    invoke-static {v0}, LaM/al;->a(LaM/al;)V

    .line 565
    return-void
.end method

.method private s()V
    .registers 5

    .prologue
    .line 918
    const/4 v0, 0x0

    .line 919
    sget-object v1, Lcom/google/googlenav/android/i;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 920
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 921
    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    goto :goto_8

    .line 924
    :cond_1e
    const/4 v0, 0x1

    if-le v1, v0, :cond_44

    .line 927
    const-string v0, "AndroidState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******************** WARNING **** =====>  Memory leak detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AndroidState instances !!! <==== **** WARNING ********************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    :cond_44
    return-void

    :cond_45
    move v0, v1

    goto :goto_1c
.end method

.method private t()V
    .registers 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/googlenav/android/i;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aq()V

    .line 969
    iget-object v0, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    if-eqz v0, :cond_12

    .line 972
    iget-object v0, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getMapViewMenuController()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    .line 974
    :cond_12
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    new-instance v1, Lcom/google/googlenav/android/q;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/android/i;->g:Lcom/google/googlenav/android/Y;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/googlenav/android/q;-><init>(Lcom/google/googlenav/android/i;LY/c;Lcom/google/googlenav/android/Y;Z)V

    invoke-virtual {v1}, Lcom/google/googlenav/android/q;->g()V

    .line 506
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/googlenav/android/i;->t:Ljava/util/Locale;

    if-nez v0, :cond_c

    .line 944
    const-string v0, "onConfigurationChanged"

    const-string v1, "currentLocale should not be null"

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_b
    :goto_b
    return-void

    .line 948
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/android/i;->t:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 954
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->a([Ljava/lang/String;)V

    .line 957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/i;->u:Z

    goto :goto_b
.end method

.method public a(Lcom/google/android/maps/A;)V
    .registers 2
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/google/googlenav/android/i;->o:Lcom/google/android/maps/A;

    .line 711
    return-void
.end method

.method public a(Lcom/google/android/maps/MapsActivity;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    if-eq v0, p1, :cond_36

    .line 652
    iput-object p1, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    .line 653
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/content/Context;)V

    .line 655
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    check-cast v0, LaB/a;

    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LaB/a;->a(Landroid/content/Context;)V

    .line 659
    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 662
    if-nez p2, :cond_36

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aj;->a()Lcom/google/googlenav/ui/view/android/aj;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 663
    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->initMapUi()V

    .line 666
    :cond_36
    return-void
.end method

.method public a(Ljava/util/Locale;Lcom/google/googlenav/android/x;ZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 758
    if-nez p1, :cond_7

    .line 759
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 762
    :cond_7
    if-eqz p4, :cond_b

    if-nez p3, :cond_b

    .line 766
    :cond_b
    iput-object p1, p0, Lcom/google/googlenav/android/i;->t:Ljava/util/Locale;

    .line 767
    iput-boolean v1, p0, Lcom/google/googlenav/android/i;->u:Z

    .line 771
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/Config;->a(Ljava/util/Locale;)V

    .line 774
    invoke-virtual {p0}, Lcom/google/googlenav/android/i;->m()Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz p3, :cond_30

    .line 775
    iput-boolean v1, p0, Lcom/google/googlenav/android/i;->p:Z

    .line 777
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-direct {p0, v0, p2, p4}, Lcom/google/googlenav/android/i;->a(Ljava/lang/String;Lcom/google/googlenav/android/x;Z)V

    .line 783
    :goto_2f
    return-void

    .line 780
    :cond_30
    invoke-direct {p0}, Lcom/google/googlenav/android/i;->t()V

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/i;->p:Z

    goto :goto_2f
.end method

.method public b()Lcom/google/googlenav/prefetch/android/A;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/googlenav/android/i;->k:Lcom/google/googlenav/prefetch/android/A;

    return-object v0
.end method

.method public c()V
    .registers 6

    .prologue
    .line 621
    invoke-static {}, Lak/g;->a()Lak/g;

    move-result-object v0

    if-nez v0, :cond_29

    .line 623
    invoke-direct {p0}, Lcom/google/googlenav/android/i;->p()[Lak/f;

    move-result-object v2

    .line 624
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_24

    aget-object v0, v2, v1

    .line 625
    instance-of v4, v0, Lal/a;

    if-eqz v4, :cond_20

    .line 626
    check-cast v0, Lal/a;

    iget-object v4, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v4}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4}, Lal/a;->a(Landroid/content/Context;)V

    .line 624
    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 630
    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/android/i;->d:Lcom/google/googlenav/ui/v;

    invoke-static {v0, v2}, Lak/g;->a(Lcom/google/googlenav/ui/v;[Lak/f;)V

    .line 632
    :cond_29
    return-void
.end method

.method public d()Lcom/google/googlenav/android/AndroidGmmApplication;
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/googlenav/android/i;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    return-object v0
.end method

.method public e()Lcom/google/googlenav/android/d;
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/googlenav/android/i;->i:Lcom/google/googlenav/android/d;

    return-object v0
.end method

.method public f()Lcom/google/android/maps/MapsActivity;
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/googlenav/android/i;->n:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method public g()Lat/p;
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/googlenav/android/i;->b:Lat/p;

    return-object v0
.end method

.method public h()Lat/u;
    .registers 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/googlenav/android/i;->c:Lat/u;

    return-object v0
.end method

.method public i()Lcom/google/googlenav/ui/v;
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/googlenav/android/i;->d:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method public j()Lcom/google/googlenav/ui/android/L;
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/googlenav/android/i;->f:Lcom/google/googlenav/ui/android/L;

    return-object v0
.end method

.method public k()Lcom/google/googlenav/android/Y;
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/googlenav/android/i;->g:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method public l()V
    .registers 5

    .prologue
    .line 729
    const/4 v0, 0x0

    .line 730
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 731
    new-instance v2, Lcom/google/googlenav/android/s;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/android/s;-><init>(Lcom/google/googlenav/android/i;Landroid/os/Handler;)V

    .line 742
    invoke-static {}, Lt/m;->f()V

    .line 743
    iget-object v1, p0, Lcom/google/googlenav/android/i;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    iget-object v3, p0, Lcom/google/googlenav/android/i;->e:Lac/h;

    invoke-static {v1, v3, v2, v0}, Lt/m;->a(Landroid/content/Context;Lac/h;Ljava/lang/Runnable;Z)V

    .line 745
    return-void
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 791
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->d()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/google/googlenav/android/i;->p:Z

    return v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/google/googlenav/android/i;->u:Z

    return v0
.end method
