.class public LxQ;
.super Ljava/lang/Object;
.source "KixJSVM.java"

# interfaces
.implements LBC;
.implements LFo;
.implements Lvn;
.implements Lxr;


# instance fields
.field private a:I

.field private final a:LFX;

.field private final a:LFk;

.field private final a:LFu;

.field private final a:LIL;

.field private final a:LJP;

.field private final a:LXP;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Landroid/os/Handler;

.field private final a:LdE;

.field private final a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LxW;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "LBw;",
            ">;"
        }
    .end annotation
.end field

.field private a:LvF;

.field private a:LvK;

.field private a:LvU;

.field private final a:Lvg;

.field private a:Lvs;

.field private a:Lwb;

.field private a:Lwg;

.field private a:LxV;

.field private a:LxX;

.field private final a:LxY;

.field private final a:LxZ;

.field private a:Lxs;

.field private final a:Lya;

.field private a:Z

.field private final b:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lyc;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LxU;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lyb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LanD;LIL;LFX;Lvg;LXP;LFu;LdE;LJP;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "LIL;",
            "LFX;",
            "Lvg;",
            "LXP;",
            "LFu;",
            "LdE;",
            "LJP;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, LxY;

    invoke-direct {v0, p0, v1}, LxY;-><init>(LxQ;LxR;)V

    iput-object v0, p0, LxQ;->a:LxY;

    .line 174
    new-instance v0, LxZ;

    invoke-direct {v0, p0, v1}, LxZ;-><init>(LxQ;LxR;)V

    iput-object v0, p0, LxQ;->a:LxZ;

    .line 176
    new-instance v0, Lya;

    invoke-direct {v0, p0, v1}, Lya;-><init>(LxQ;LxR;)V

    iput-object v0, p0, LxQ;->a:Lya;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LxQ;->a:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LxQ;->b:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LxQ;->c:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LxQ;->d:Ljava/util/List;

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LxQ;->a:Landroid/os/Handler;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LxQ;->a:Ljava/util/Map;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, LxQ;->a:Z

    .line 202
    const/16 v0, 0xbb8

    iput v0, p0, LxQ;->a:I

    .line 206
    iput-boolean v2, p0, LxQ;->c:Z

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LxQ;->a:Ljava/lang/Object;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LxQ;->b:Ljava/lang/Object;

    .line 239
    iput-object p1, p0, LxQ;->a:LanD;

    .line 240
    iput-object p2, p0, LxQ;->a:LIL;

    .line 241
    iput-object p3, p0, LxQ;->a:LFX;

    .line 242
    iput-object p4, p0, LxQ;->a:Lvg;

    .line 243
    iput-object p5, p0, LxQ;->a:LXP;

    .line 244
    iput-object p8, p0, LxQ;->a:LJP;

    .line 245
    iput-object p6, p0, LxQ;->a:LFu;

    .line 246
    iput-object p7, p0, LxQ;->a:LdE;

    .line 247
    new-instance v0, LFk;

    invoke-direct {v0, p0, v2}, LFk;-><init>(LFo;Z)V

    iput-object v0, p0, LxQ;->a:LFk;

    .line 248
    return-void
.end method

.method static synthetic access$1000(LxQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, LxQ;->reallyOpenDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1100(LxQ;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, LxQ;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(LxQ;)LxX;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, LxQ;->a:LxX;

    return-object v0
.end method

.method static synthetic access$1300(LxQ;)V
    .registers 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, LxQ;->onReset()V

    return-void
.end method

.method static synthetic access$300(LxQ;)Z
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, LxQ;->b:Z

    return v0
.end method

.method static synthetic access$400(LxQ;)LFu;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, LxQ;->a:LFu;

    return-object v0
.end method

.method static synthetic access$500(LxQ;)LFX;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, LxQ;->a:LFX;

    return-object v0
.end method

.method static synthetic access$602(LxQ;LvF;)LvF;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, LxQ;->a:LvF;

    return-object p1
.end method

.method static synthetic access$700(LxQ;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, LxQ;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(LxQ;)LdE;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, LxQ;->a:LdE;

    return-object v0
.end method

.method static synthetic access$900(LxQ;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, LxQ;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private fetchJsFromAppCache(Ljava/lang/String;Ljava/lang/String;Lvh;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, LxQ;->a:LFX;

    const-string v1, "kixJsManifestUrlFormat"

    const-string v2, "https://docs.google.com/document/d/%s/native/androidmanifest"

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 332
    invoke-static {v0}, LBr;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 333
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LBr;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object v3, v0

    .line 336
    :goto_3b
    iget-object v0, p0, LxQ;->a:Lvg;

    iget-object v1, p0, LxQ;->a:LFu;

    invoke-virtual {v1}, LFu;->a()Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x0

    :goto_46
    const-string v2, "kix_mobile"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p4

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lvg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvh;)V

    .line 338
    return-void

    :cond_52
    move-object v1, p1

    .line 336
    goto :goto_46

    :cond_54
    move-object v3, v0

    goto :goto_3b
.end method

.method private onReset()V
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, LxQ;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc;

    .line 610
    invoke-interface {v0}, Lyc;->a()V

    goto :goto_6

    .line 612
    :cond_16
    return-void
.end method

.method private reallyOpenDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, LxQ;->a:Ljava/lang/String;

    .line 343
    iput-object p3, p0, LxQ;->b:Ljava/lang/String;

    .line 345
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->b()V

    .line 347
    :try_start_9
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->a()LvH;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, LvH;->a()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 349
    invoke-virtual {v0}, LvH;->a()Lvs;

    move-result-object v0

    iput-object v0, p0, LxQ;->a:Lvs;

    .line 350
    iget-object v0, p0, LxQ;->a:Lvs;

    invoke-interface {v0}, Lvs;->b()V

    .line 352
    iget-object v0, p0, LxQ;->a:Lvs;

    invoke-interface {v0, p2, p1, p3}, Lvs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LvL;

    move-result-object v0

    .line 355
    invoke-interface {v0, p4}, LvL;->a(Z)V

    .line 356
    const/4 v1, 0x0

    invoke-interface {v0, v1}, LvL;->b(Z)V

    .line 358
    iget-object v1, p0, LxQ;->a:LvF;

    iget-object v2, p0, LxQ;->a:LxY;

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(LvF;LvP;)LvQ;

    move-result-object v1

    .line 360
    iget-object v2, p0, LxQ;->a:LvF;

    iget-object v3, p0, LxQ;->a:LxZ;

    invoke-static {v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(LvF;LvS;)LvT;

    move-result-object v2

    .line 362
    iget-object v3, p0, LxQ;->a:LvF;

    iget-object v4, p0, LxQ;->a:Lya;

    invoke-static {v3, v4}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(LvF;LvX;)LvY;

    move-result-object v3

    .line 365
    invoke-interface {v0, v1}, LvL;->a(LvQ;)V

    .line 366
    invoke-interface {v0, v2}, LvL;->a(LvT;)V

    .line 367
    invoke-interface {v0, v3}, LvL;->a(LvY;)V

    .line 369
    invoke-interface {v0}, LvL;->a()LvK;

    move-result-object v0

    iput-object v0, p0, LxQ;->a:LvK;

    .line 378
    :goto_54
    iget-object v0, p0, LxQ;->a:LvK;

    iget v1, p0, LxQ;->a:I

    invoke-interface {v0, v1}, LvK;->a(I)V

    .line 380
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->c()V

    .line 381
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->b()V
    :try_end_65
    .catchall {:try_start_9 .. :try_end_65} :catchall_84

    .line 383
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->c()V

    .line 385
    return-void

    .line 371
    :cond_6b
    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    :try_start_70
    invoke-virtual/range {v0 .. v5}, LvH;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lvs;

    move-result-object v0

    iput-object v0, p0, LxQ;->a:Lvs;

    .line 373
    iget-object v0, p0, LxQ;->a:Lvs;

    invoke-interface {v0}, Lvs;->b()V

    .line 375
    iget-object v0, p0, LxQ;->a:Lvs;

    invoke-interface {v0}, Lvs;->a()LvK;

    move-result-object v0

    iput-object v0, p0, LxQ;->a:LvK;
    :try_end_83
    .catchall {:try_start_70 .. :try_end_83} :catchall_84

    goto :goto_54

    .line 383
    :catchall_84
    move-exception v0

    iget-object v1, p0, LxQ;->a:LvF;

    invoke-virtual {v1}, LvF;->c()V

    throw v0
.end method


# virtual methods
.method public abortHttpRequest(I)V
    .registers 4
    .parameter

    .prologue
    .line 540
    iget-object v0, p0, LxQ;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBw;

    .line 541
    if-eqz v0, :cond_11

    .line 542
    invoke-virtual {v0}, LBw;->a()V

    .line 544
    :cond_11
    iget-object v0, p0, LxQ;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    return-void
.end method

.method public addCollaboratorListener(LxU;)V
    .registers 3
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, LxQ;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    return-void
.end method

.method public addInitializationListener(LxW;)V
    .registers 3
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, LxQ;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    return-void
.end method

.method public addNetworkStatusListener(Lyb;)V
    .registers 3
    .parameter

    .prologue
    .line 669
    iget-object v0, p0, LxQ;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    return-void
.end method

.method public addUpdateListener(Lyc;)V
    .registers 3
    .parameter

    .prologue
    .line 643
    iget-object v0, p0, LxQ;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    return-void
.end method

.method public delete()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    const-string v0, "Model"

    const-string v1, "JSVM deleted."

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iput-boolean v3, p0, LxQ;->b:Z

    .line 460
    iput-boolean v3, p0, LxQ;->a:Z

    .line 462
    iget-object v0, p0, LxQ;->a:LvF;

    if-nez v0, :cond_12

    .line 505
    :goto_11
    return-void

    .line 466
    :cond_12
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->b()V

    .line 468
    :try_start_17
    iget-object v0, p0, LxQ;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBw;

    .line 469
    invoke-virtual {v0}, LBw;->a()V
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_31

    goto :goto_21

    .line 500
    :catchall_31
    move-exception v0

    iget-object v1, p0, LxQ;->a:LvF;

    invoke-virtual {v1}, LvF;->c()V

    throw v0

    .line 471
    :cond_38
    :try_start_38
    iget-object v0, p0, LxQ;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 473
    iget-object v0, p0, LxQ;->a:LFk;

    invoke-virtual {v0}, LFk;->c()V

    .line 475
    iget-object v0, p0, LxQ;->a:Lwb;

    if-eqz v0, :cond_4e

    .line 476
    iget-object v0, p0, LxQ;->a:Lwb;

    invoke-interface {v0}, Lwb;->a()V

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, LxQ;->a:Lwb;

    .line 480
    :cond_4e
    iget-object v0, p0, LxQ;->a:LvU;

    if-eqz v0, :cond_5a

    .line 481
    iget-object v0, p0, LxQ;->a:LvU;

    invoke-interface {v0}, LvU;->a()V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, LxQ;->a:LvU;

    .line 485
    :cond_5a
    iget-object v0, p0, LxQ;->a:Lwg;

    if-eqz v0, :cond_66

    .line 486
    iget-object v0, p0, LxQ;->a:Lwg;

    invoke-interface {v0}, Lwg;->a()V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, LxQ;->a:Lwg;

    .line 490
    :cond_66
    iget-object v0, p0, LxQ;->a:LvK;

    if-eqz v0, :cond_72

    .line 491
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->a()V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, LxQ;->a:LvK;

    .line 495
    :cond_72
    iget-object v0, p0, LxQ;->a:Lvs;

    if-eqz v0, :cond_7e

    .line 496
    iget-object v0, p0, LxQ;->a:Lvs;

    invoke-interface {v0}, Lvs;->a()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, LxQ;->a:Lvs;
    :try_end_7e
    .catchall {:try_start_38 .. :try_end_7e} :catchall_31

    .line 500
    :cond_7e
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->c()V

    .line 503
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->a()V

    .line 504
    iput-object v2, p0, LxQ;->a:LvF;

    goto :goto_11
.end method

.method public fetchImageUrl(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 679
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->b()V

    .line 681
    :try_start_5
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->a()Lwe;

    move-result-object v0

    invoke-interface {v0, p1}, Lwe;->a(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    .line 683
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->c()V

    .line 685
    return-void

    .line 683
    :catchall_14
    move-exception v0

    iget-object v1, p0, LxQ;->a:LvF;

    invoke-virtual {v1}, LvF;->c()V

    throw v0
.end method

.method public getController()LvU;
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, LxQ;->a:LvU;

    return-object v0
.end method

.method public getModel()Lwb;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, LxQ;->a:Lwb;

    return-object v0
.end method

.method public getTime()D
    .registers 3

    .prologue
    .line 567
    iget-object v0, p0, LxQ;->a:LFk;

    invoke-virtual {v0}, LFk;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public invokeTimer(D)I
    .registers 6
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->b()V

    .line 579
    :try_start_5
    iget-object v0, p0, LxQ;->a:Lvs;

    invoke-virtual {p0}, LxQ;->getTime()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lvs;->a(D)I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_15

    move-result v0

    .line 581
    iget-object v1, p0, LxQ;->a:LvF;

    invoke-virtual {v1}, LvF;->c()V

    return v0

    :catchall_15
    move-exception v0

    iget-object v1, p0, LxQ;->a:LvF;

    invoke-virtual {v1}, LvF;->c()V

    throw v0
.end method

.method public onCollaboratorChat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 764
    iget-object v0, p0, LxQ;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxU;

    .line 765
    invoke-interface {v0, p1, p2}, LxU;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 767
    :cond_16
    return-void
.end method

.method public onCollaboratorCursorMove(Ljava/lang/String;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 771
    iget-object v0, p0, LxQ;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxU;

    .line 772
    invoke-interface {v0, p1, p2, p3}, LxU;->a(Ljava/lang/String;II)V

    goto :goto_6

    .line 774
    :cond_16
    return-void
.end method

.method public onCollaboratorJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 750
    iget-object v0, p0, LxQ;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxU;

    .line 751
    invoke-interface {v0, p1, p2, p3}, LxU;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 753
    :cond_16
    return-void
.end method

.method public onCollaboratorLeave(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 757
    iget-object v0, p0, LxQ;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxU;

    .line 758
    invoke-interface {v0, p1}, LxU;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 760
    :cond_16
    return-void
.end method

.method public onDataReceived(ILBD;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->b()V

    .line 512
    :try_start_5
    iget-object v0, p0, LxQ;->a:Lvs;

    invoke-virtual {p2}, LBD;->ordinal()I

    move-result v2

    move v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lvs;->a(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_19

    .line 515
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->c()V

    .line 517
    return-void

    .line 515
    :catchall_19
    move-exception v0

    iget-object v1, p0, LxQ;->a:LvF;

    invoke-virtual {v1}, LvF;->c()V

    throw v0
.end method

.method public onDocumentSaveStateChanged(I)V
    .registers 3
    .parameter

    .prologue
    .line 777
    iget-object v0, p0, LxQ;->a:LxV;

    if-eqz v0, :cond_9

    .line 778
    iget-object v0, p0, LxQ;->a:LxV;

    invoke-interface {v0, p1}, LxV;->a(I)V

    .line 780
    :cond_9
    return-void
.end method

.method public onDocumentUpdated()V
    .registers 6

    .prologue
    .line 695
    iget-object v0, p0, LxQ;->a:LvU;

    if-nez v0, :cond_11

    .line 696
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->a()LvU;

    move-result-object v0

    iput-object v0, p0, LxQ;->a:LvU;

    .line 697
    iget-object v0, p0, LxQ;->a:LvU;

    invoke-interface {v0}, LvU;->b()V

    .line 700
    :cond_11
    iget-object v0, p0, LxQ;->a:Lwg;

    if-nez v0, :cond_22

    .line 701
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->a()Lwg;

    move-result-object v0

    iput-object v0, p0, LxQ;->a:Lwg;

    .line 702
    iget-object v0, p0, LxQ;->a:Lwg;

    invoke-interface {v0}, Lwg;->b()V

    .line 705
    :cond_22
    iget-object v0, p0, LxQ;->a:Lwb;

    if-nez v0, :cond_4f

    .line 706
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->a()Lwb;

    move-result-object v0

    iput-object v0, p0, LxQ;->a:Lwb;

    .line 707
    iget-object v0, p0, LxQ;->a:Lwb;

    invoke-interface {v0}, Lwb;->b()V

    .line 708
    iget-object v0, p0, LxQ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxW;

    .line 709
    iget-object v2, p0, LxQ;->a:Lwb;

    iget-object v3, p0, LxQ;->a:LvU;

    iget-object v4, p0, LxQ;->a:Lwg;

    invoke-interface {v0, v2, v3, v4}, LxW;->a(Lwb;LvU;Lwg;)V

    goto :goto_39

    .line 713
    :cond_4f
    const-string v0, "Model"

    const-string v1, "OnDocumentUpdated"

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, LxQ;->a:Lwg;

    const-string v1, ""

    invoke-interface {v0, v1}, Lwg;->a(Ljava/lang/String;)LvZ;

    move-result-object v1

    .line 717
    iget-object v0, p0, LxQ;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc;

    .line 718
    invoke-interface {v0, v1}, Lyc;->a(LvZ;)V

    goto :goto_64

    .line 720
    :cond_74
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 616
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, LxQ;->a:LxX;

    if-eqz v0, :cond_21

    .line 618
    iget-object v0, p0, LxQ;->a:LxX;

    invoke-interface {v0, p1}, LxX;->a(Ljava/lang/String;)V

    .line 620
    :cond_21
    return-void
.end method

.method public onImageUrlFetched(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 735
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetched image. Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, LxQ;->a:Lxs;

    if-eqz v0, :cond_2d

    .line 737
    iget-object v0, p0, LxQ;->a:Lxs;

    iget-object v1, p0, LxQ;->a:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lxs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_2d
    return-void
.end method

.method public onModelLoadComplete()V
    .registers 4

    .prologue
    .line 587
    iget-object v0, p0, LxQ;->a:LdE;

    iget-object v1, p0, LxQ;->b:Ljava/lang/Object;

    const-string v2, "kixLoadTime"

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, LxQ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxW;

    .line 590
    iget-object v2, p0, LxQ;->a:Lwb;

    invoke-interface {v0, v2}, LxW;->a(Lwb;)V

    goto :goto_f

    .line 594
    :cond_21
    iget-object v0, p0, LxQ;->a:LFk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LFk;->a(Z)V

    .line 595
    return-void
.end method

.method public onModelLoadFailed(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 599
    iget-object v0, p0, LxQ;->a:LdE;

    iget-object v1, p0, LxQ;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LdE;->b(Ljava/lang/Object;)V

    .line 603
    iget-object v0, p0, LxQ;->a:LxX;

    if-eqz v0, :cond_10

    .line 604
    iget-object v0, p0, LxQ;->a:LxX;

    invoke-interface {v0}, LxX;->a()V

    .line 606
    :cond_10
    return-void
.end method

.method public onNetworkStatus(ZLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 624
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-boolean v0, p0, LxQ;->c:Z

    if-eq v0, p1, :cond_3e

    .line 626
    iput-boolean p1, p0, LxQ;->c:Z

    .line 628
    iget-object v0, p0, LxQ;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyb;

    .line 629
    invoke-interface {v0, p1, p2}, Lyb;->a(ZLjava/lang/String;)V

    goto :goto_2e

    .line 632
    :cond_3e
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 411
    iget-boolean v0, p0, LxQ;->a:Z

    if-eqz v0, :cond_5

    .line 429
    :cond_4
    :goto_4
    return-void

    .line 415
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, LxQ;->a:Z

    .line 416
    iget-object v0, p0, LxQ;->a:LvK;

    if-eqz v0, :cond_4

    .line 421
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->b()V

    .line 423
    :try_start_11
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->d()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_21

    .line 425
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->c()V

    .line 428
    iget-object v0, p0, LxQ;->a:LFk;

    invoke-virtual {v0}, LFk;->a()V

    goto :goto_4

    .line 425
    :catchall_21
    move-exception v0

    iget-object v1, p0, LxQ;->a:LvF;

    invoke-virtual {v1}, LvF;->c()V

    throw v0
.end method

.method public onRequestCompleted(I)V
    .registers 4
    .parameter

    .prologue
    .line 534
    iget-object v0, p0, LxQ;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    return-void
.end method

.method public onRequestFailed(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->b()V

    .line 523
    :try_start_5
    iget-object v0, p0, LxQ;->a:Lvs;

    invoke-interface {v0, p1, p2}, Lvs;->a(II)V

    .line 524
    iget-object v0, p0, LxQ;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP request failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    .line 527
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->c()V

    .line 529
    return-void

    .line 527
    :catchall_31
    move-exception v0

    iget-object v1, p0, LxQ;->a:LvF;

    invoke-virtual {v1}, LvF;->c()V

    throw v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 432
    iget-boolean v0, p0, LxQ;->a:Z

    if-nez v0, :cond_5

    .line 451
    :cond_4
    :goto_4
    return-void

    .line 436
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, LxQ;->a:Z

    .line 438
    iget-object v0, p0, LxQ;->a:LvK;

    if-eqz v0, :cond_4

    .line 443
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->b()V

    .line 445
    :try_start_11
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->e()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_21

    .line 447
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->c()V

    .line 450
    iget-object v0, p0, LxQ;->a:LFk;

    invoke-virtual {v0}, LFk;->b()V

    goto :goto_4

    .line 447
    :catchall_21
    move-exception v0

    iget-object v1, p0, LxQ;->a:LvF;

    invoke-virtual {v1}, LvF;->c()V

    throw v0
.end method

.method public onSelectionChanged(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 743
    iget-object v0, p0, LxQ;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc;

    .line 744
    invoke-interface {v0, p2, p1}, Lyc;->b(II)V

    goto :goto_6

    .line 746
    :cond_16
    return-void
.end method

.method public openDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-static {}, LZG;->a()LdX;

    move-result-object v0

    .line 257
    sget-object v1, LdX;->d:LdX;

    invoke-virtual {v0, v1}, LdX;->a(LdX;)Z

    move-result v2

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 261
    new-instance v0, LxR;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, LxR;-><init>(LxQ;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    iget-object v1, p0, LxQ;->a:LdE;

    iget-object v3, p0, LxQ;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3}, LdE;->a(Ljava/lang/Object;)V

    .line 304
    const-string v5, "kix_mobilenative_android.js"

    .line 305
    if-nez v2, :cond_37

    iget-object v1, p0, LxQ;->a:LFX;

    const-string v2, "kixEnableJsDownload"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_37

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v6, p3

    .line 307
    invoke-direct/range {v1 .. v6}, LxQ;->fetchJsFromAppCache(Ljava/lang/String;Ljava/lang/String;Lvh;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_36
    return-void

    .line 310
    :cond_37
    :try_start_37
    iget-object v2, p0, LxQ;->a:LXP;

    iget-object v1, p0, LxQ;->a:LanD;

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v2, v1}, LXP;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lvh;->a([BLjava/lang/String;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_51} :catch_52

    goto :goto_36

    .line 312
    :catch_52
    move-exception v1

    .line 313
    const-string v2, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed reading from file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fallback to download from the web."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v6, p3

    .line 315
    invoke-direct/range {v1 .. v6}, LxQ;->fetchJsFromAppCache(Ljava/lang/String;Ljava/lang/String;Lvh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public removeCollaboratorListener(LxU;)V
    .registers 3
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, LxQ;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 666
    return-void
.end method

.method public removeInitializationListener(LxW;)V
    .registers 3
    .parameter

    .prologue
    .line 639
    iget-object v0, p0, LxQ;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 640
    return-void
.end method

.method public removeNetworkStatusListener(Lyb;)V
    .registers 3
    .parameter

    .prologue
    .line 673
    iget-object v0, p0, LxQ;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 674
    return-void
.end method

.method public removeUpdateListener(Lyc;)V
    .registers 3
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, LxQ;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method public sendHttpRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    const-string v0, "Model"

    const-string v1, "Sending HTTP request"

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :try_start_7
    new-instance v0, LBw;

    iget-object v1, p0, LxQ;->a:LIL;

    const-string v2, "writely"

    iget-object v3, p0, LxQ;->a:LJP;

    iget-object v4, p0, LxQ;->a:Ljava/lang/String;

    iget-object v6, p0, LxQ;->a:Landroid/os/Handler;

    iget-object v7, p0, LxQ;->a:LFu;

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, LBw;-><init>(LIL;Ljava/lang/String;LJP;Ljava/lang/String;LBC;Landroid/os/Handler;LFu;)V

    .line 557
    iget-object v1, p0, LxQ;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v1, p0, LxQ;->b:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, LBw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2d} :catch_2e

    .line 562
    :goto_2d
    return-void

    .line 559
    :catch_2e
    move-exception v0

    .line 560
    const-string v1, "Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendHttpRequest: Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public setDocumentSaveStateListener(LxV;)V
    .registers 2
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, LxQ;->a:LxV;

    .line 658
    return-void
.end method

.method public setErrorHandler(LxX;)V
    .registers 2
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, LxQ;->a:LxX;

    .line 689
    return-void
.end method

.method public setImageListener(Lxs;)V
    .registers 2
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, LxQ;->a:Lxs;

    .line 654
    return-void
.end method

.method public setMutationBatchInterval(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 391
    iput p1, p0, LxQ;->a:I

    .line 392
    iget-object v0, p0, LxQ;->a:LvK;

    if-nez v0, :cond_7

    .line 408
    :goto_6
    return-void

    .line 397
    :cond_7
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->b()V

    .line 399
    :try_start_c
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0, p1}, LvK;->a(I)V

    .line 400
    if-eqz p2, :cond_21

    iget-boolean v0, p0, LxQ;->a:Z

    if-nez v0, :cond_21

    .line 402
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->d()V

    .line 403
    iget-object v0, p0, LxQ;->a:LvK;

    invoke-interface {v0}, LvK;->e()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_27

    .line 406
    :cond_21
    iget-object v0, p0, LxQ;->a:LvF;

    invoke-virtual {v0}, LvF;->c()V

    goto :goto_6

    :catchall_27
    move-exception v0

    iget-object v1, p0, LxQ;->a:LvF;

    invoke-virtual {v1}, LvF;->c()V

    throw v0
.end method

.method public startTimer(I)V
    .registers 3
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, LxQ;->a:LFk;

    invoke-virtual {v0, p1}, LFk;->a(I)V

    .line 573
    return-void
.end method
