.class public Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static l:LaT/h;


# instance fields
.field private a:LQ/a;

.field private final b:Ljava/lang/Object;

.field private c:LY/d;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:LaM/a;

.field private h:Ljava/util/List;

.field private i:Lcom/google/googlenav/friend/aK;

.field private j:Lah/a;

.field private k:Lcom/google/googlenav/appwidget/friends/b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 149
    new-instance v0, LaT/h;

    new-instance v1, LR/a;

    invoke-direct {v1}, LR/a;-><init>()V

    const-string v2, "latitude widget running"

    const-string v3, "wu"

    const/16 v4, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->l:LaT/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b:Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 541
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)LaM/a;
    .registers 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->g:LaM/a;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/appwidget/friends/i;)Lcom/google/googlenav/appwidget/friends/c;
    .registers 11
    .parameter

    .prologue
    const-wide/high16 v5, -0x8000

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 454
    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->a:Lcom/google/googlenav/appwidget/friends/i;

    if-ne p1, v0, :cond_80

    .line 460
    iget-object v3, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 461
    :try_start_b
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->h:Ljava/util/List;

    if-eqz v0, :cond_a0

    .line 462
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 463
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 465
    :goto_18
    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->i:Lcom/google/googlenav/friend/aK;

    .line 466
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_65

    .line 472
    if-eqz v1, :cond_6c

    .line 473
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 474
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_25
    if-ge v4, v5, :cond_6d

    .line 475
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aK;

    .line 478
    if-eqz v0, :cond_68

    iget-object v6, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lah/a;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lah/a;->a(Ljava/lang/Long;)Lah/m;

    move-result-object v6

    if-eqz v6, :cond_68

    iget-object v6, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lah/a;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lah/a;->a(Ljava/lang/Long;)Lah/m;

    move-result-object v6

    invoke-virtual {v6}, Lah/m;->h()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 480
    iget-object v6, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lah/a;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lah/a;->a(Ljava/lang/Long;)Lah/m;

    move-result-object v0

    invoke-virtual {v0}, Lah/m;->d()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 482
    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 466
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0

    .line 484
    :cond_68
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_6c
    move-object v3, v7

    .line 490
    :cond_6d
    new-instance v0, Lcom/google/googlenav/appwidget/friends/c;

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/c;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aK;Ljava/util/List;ZJ)V

    .line 508
    :cond_7f
    :goto_7f
    return-object v0

    .line 493
    :cond_80
    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->c:Lcom/google/googlenav/appwidget/friends/i;

    if-ne p1, v0, :cond_8d

    .line 496
    new-instance v0, Lcom/google/googlenav/appwidget/friends/c;

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/c;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aK;Ljava/util/List;ZJ)V

    goto :goto_7f

    .line 502
    :cond_8d
    invoke-static {}, Lcom/google/googlenav/appwidget/friends/c;->a()Lcom/google/googlenav/appwidget/friends/c;

    move-result-object v0

    .line 503
    if-nez v0, :cond_7f

    .line 505
    new-instance v0, Lcom/google/googlenav/appwidget/friends/c;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c()Z

    move-result v4

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/c;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aK;Ljava/util/List;ZJ)V

    goto :goto_7f

    :cond_a0
    move-object v1, v7

    goto/16 :goto_18
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;
    .registers 5
    .parameter

    .prologue
    .line 312
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    .line 313
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    if-eq p1, v0, :cond_18

    const/4 v0, 0x1

    .line 315
    :goto_d
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c()Z

    move-result v2

    if-nez v2, :cond_1a

    if-eqz v0, :cond_1a

    .line 317
    sget-object p1, Lcom/google/googlenav/appwidget/friends/g;->h:Lcom/google/googlenav/appwidget/friends/g;

    .line 322
    :cond_17
    :goto_17
    return-object p1

    .line 313
    :cond_18
    const/4 v0, 0x0

    goto :goto_d

    .line 318
    :cond_1a
    invoke-virtual {v1}, Lac/h;->m()Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    .line 320
    sget-object p1, Lcom/google/googlenav/appwidget/friends/g;->e:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_17
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/friend/aK;)Lcom/google/googlenav/friend/aK;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->i:Lcom/google/googlenav/friend/aK;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->h:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/google/googlenav/appwidget/friends/c;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 439
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 440
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->k:Lcom/google/googlenav/appwidget/friends/b;

    invoke-virtual {v2, p1, p2}, Lcom/google/googlenav/appwidget/friends/b;->a(Lcom/google/googlenav/appwidget/friends/c;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 443
    return-void
.end method

.method private a()Z
    .registers 4

    .prologue
    .line 295
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 296
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 298
    array-length v0, v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private b()LY/d;
    .registers 4

    .prologue
    .line 513
    new-instance v0, Lcom/google/googlenav/appwidget/friends/e;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/appwidget/friends/e;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;LY/c;)V

    .line 520
    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 521
    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/appwidget/friends/g;)V
    .registers 5
    .parameter

    .prologue
    .line 335
    new-instance v0, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/friends/d;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/appwidget/friends/d;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V

    invoke-direct {v0, v1, v2}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->g()V

    .line 350
    return-void
.end method

.method private c(Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 358
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    .line 360
    monitor-enter v1

    .line 361
    :goto_7
    :try_start_7
    invoke-virtual {v1}, Lac/h;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 362
    invoke-virtual {v1}, Lac/h;->h()V

    goto :goto_7

    .line 365
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    .line 364
    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;

    move-result-object v0

    .line 365
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_11

    .line 368
    sget-object v1, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/friends/g;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_ba

    .line 427
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->stopSelf()V

    .line 428
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    :goto_29
    return-object v0

    .line 372
    :pswitch_2a
    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->c:Lcom/google/googlenav/appwidget/friends/i;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/i;)Lcom/google/googlenav/appwidget/friends/c;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/c;Z)V

    .line 373
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_29

    .line 378
    :pswitch_36
    sget-object v0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->l:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 379
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:LY/d;

    invoke-virtual {v0}, LY/d;->g()V

    .line 380
    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->b:Lcom/google/googlenav/appwidget/friends/i;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/i;)Lcom/google/googlenav/appwidget/friends/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/c;Z)V

    .line 381
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->b:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_29

    .line 385
    :pswitch_4d
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/googlenav/appwidget/friends/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 387
    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_6d

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_78

    .line 389
    :cond_6d
    new-instance v0, Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/appwidget/friends/h;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/d;)V

    invoke-static {v0}, Lcom/google/googlenav/friend/p;->a(Lcom/google/googlenav/aY;)V

    .line 395
    :goto_75
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->c:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_29

    .line 392
    :cond_78
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->g:LaM/a;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {v2, p0, v4}, Lcom/google/googlenav/appwidget/friends/h;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/d;)V

    invoke-virtual {v0, v1, v4, v2}, LaM/a;->a(ILcom/google/googlenav/android/Y;LaM/f;)V

    goto :goto_75

    .line 399
    :pswitch_84
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->c:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_29

    .line 403
    :pswitch_87
    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->a:Lcom/google/googlenav/appwidget/friends/i;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/i;)Lcom/google/googlenav/appwidget/friends/c;

    move-result-object v0

    .line 404
    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/c;Z)V

    .line 405
    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/friends/c;->b()V

    .line 406
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_29

    .line 410
    :pswitch_96
    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->b:Lcom/google/googlenav/appwidget/friends/i;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/i;)Lcom/google/googlenav/appwidget/friends/c;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/c;Z)V

    .line 411
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_29

    .line 415
    :pswitch_a2
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:LY/d;

    invoke-virtual {v0}, LY/d;->c()I

    .line 416
    sget-object v0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->l:LaT/h;

    invoke-virtual {v0}, LaT/h;->b()V

    .line 417
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->stopSelf()V

    .line 418
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    goto/16 :goto_29

    .line 422
    :pswitch_b3
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->stopSelf()V

    .line 423
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    goto/16 :goto_29

    .line 368
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_36
        :pswitch_4d
        :pswitch_84
        :pswitch_87
        :pswitch_96
        :pswitch_a2
        :pswitch_b3
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->h:Ljava/util/List;

    return-object v0
.end method

.method private final c()Z
    .registers 2

    .prologue
    .line 531
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/google/googlenav/friend/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic d(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Lah/a;
    .registers 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lah/a;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 190
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 194
    :cond_c
    new-instance v0, LQ/a;

    invoke-direct {v0}, LQ/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a:LQ/a;

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a:LQ/a;

    invoke-virtual {v0, p0}, LQ/a;->a(Landroid/content/Context;)V

    .line 197
    new-instance v0, Lcom/google/googlenav/appwidget/friends/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/friends/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->k:Lcom/google/googlenav/appwidget/friends/b;

    .line 199
    new-instance v0, LaM/a;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1}, LaM/a;-><init>(LY/c;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->g:LaM/a;

    .line 201
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:LY/d;

    if-nez v0, :cond_36

    .line 202
    monitor-enter p0

    .line 203
    :try_start_2f
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b()LY/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:LY/d;

    .line 204
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_48

    .line 208
    :cond_36
    new-instance v0, Lah/a;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    new-instance v3, Lah/r;

    invoke-direct {v3}, Lah/r;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lah/a;-><init>(Lcom/google/googlenav/android/Y;LY/c;Lah/q;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lah/a;

    .line 211
    return-void

    .line 204
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 288
    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    .line 289
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 220
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 223
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->stopSelf()V

    .line 275
    :cond_a
    :goto_a
    return-void

    .line 227
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a:LQ/a;

    invoke-virtual {v0}, LQ/a;->a()V

    .line 228
    if-nez p1, :cond_26

    .line 232
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_20

    .line 233
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto :goto_a

    .line 235
    :cond_20
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->e:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto :goto_a

    .line 238
    :cond_26
    const-string v0, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 241
    const-string v0, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 243
    invoke-static {}, Lcom/google/googlenav/friend/af;->o()V

    goto :goto_a

    .line 245
    :cond_42
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 247
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_MANUAL"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 250
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 251
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto :goto_a

    .line 254
    :cond_68
    const-string v0, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.UPDATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 257
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.UPDATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 258
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 259
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto/16 :goto_a

    .line 262
    :cond_92
    const-string v0, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 264
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto/16 :goto_a

    .line 266
    :cond_a5
    const-string v0, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 268
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto/16 :goto_a

    .line 272
    :cond_b8
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto/16 :goto_a
.end method
