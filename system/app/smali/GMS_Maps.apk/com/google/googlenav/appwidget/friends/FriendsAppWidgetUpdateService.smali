.class public Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;
.super Landroid/app/Service;


# static fields
.field private static l:Lar/u;


# instance fields
.field private a:Lad/a;

.field private final b:Ljava/lang/Object;

.field private c:Lap/d;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:LaY/a;

.field private h:Ljava/util/List;

.field private i:Lax/aP;

.field private j:Lay/a;

.field private k:Lcom/google/googlenav/appwidget/friends/b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lar/u;

    new-instance v1, Lag/a;

    invoke-direct {v1}, Lag/a;-><init>()V

    const-string v2, "latitude widget running"

    const-string v3, "wu"

    const/16 v4, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->l:Lar/u;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)LaY/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->g:LaY/a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lax/aP;)Lax/aP;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->i:Lax/aP;

    return-object p1
.end method

.method private a(Lcom/google/googlenav/appwidget/friends/i;)Lcom/google/googlenav/appwidget/friends/c;
    .registers 11

    const-wide/high16 v5, -0x8000

    const/4 v4, 0x0

    const/4 v7, 0x0

    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->a:Lcom/google/googlenav/appwidget/friends/i;

    if-ne p1, v0, :cond_80

    iget-object v3, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->h:Ljava/util/List;

    if-eqz v0, :cond_a0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_18
    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->i:Lax/aP;

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_65

    if-eqz v1, :cond_6c

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_25
    if-ge v4, v5, :cond_6d

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aP;

    if-eqz v0, :cond_68

    iget-object v6, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lay/a;

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lay/a;->a(Ljava/lang/Long;)Lay/n;

    move-result-object v6

    if-eqz v6, :cond_68

    iget-object v6, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lay/a;

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lay/a;->a(Ljava/lang/Long;)Lay/n;

    move-result-object v6

    invoke-virtual {v6}, Lay/n;->h()Z

    move-result v6

    if-eqz v6, :cond_68

    iget-object v6, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lay/a;

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lay/a;->a(Ljava/lang/Long;)Lay/n;

    move-result-object v0

    invoke-virtual {v0}, Lay/n;->d()Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0

    :cond_68
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_6c
    move-object v3, v7

    :cond_6d
    new-instance v0, Lcom/google/googlenav/appwidget/friends/c;

    const/4 v4, 0x1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v5

    invoke-virtual {v5}, Laf/b;->v()Laf/a;

    move-result-object v5

    invoke-interface {v5}, Laf/a;->b()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/c;-><init>(Ljava/util/List;Lax/aP;Ljava/util/List;ZJ)V

    :cond_7f
    :goto_7f
    return-object v0

    :cond_80
    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->c:Lcom/google/googlenav/appwidget/friends/i;

    if-ne p1, v0, :cond_8d

    new-instance v0, Lcom/google/googlenav/appwidget/friends/c;

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/c;-><init>(Ljava/util/List;Lax/aP;Ljava/util/List;ZJ)V

    goto :goto_7f

    :cond_8d
    invoke-static {}, Lcom/google/googlenav/appwidget/friends/c;->a()Lcom/google/googlenav/appwidget/friends/c;

    move-result-object v0

    if-nez v0, :cond_7f

    new-instance v0, Lcom/google/googlenav/appwidget/friends/c;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c()Z

    move-result v4

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/c;-><init>(Ljava/util/List;Lax/aP;Ljava/util/List;ZJ)V

    goto :goto_7f

    :cond_a0
    move-object v1, v7

    goto/16 :goto_18
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;
    .registers 5

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    if-eq p1, v0, :cond_18

    const/4 v0, 0x1

    :goto_d
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c()Z

    move-result v2

    if-nez v2, :cond_1a

    if-eqz v0, :cond_1a

    sget-object p1, Lcom/google/googlenav/appwidget/friends/g;->h:Lcom/google/googlenav/appwidget/friends/g;

    :cond_17
    :goto_17
    return-object p1

    :cond_18
    const/4 v0, 0x0

    goto :goto_d

    :cond_1a
    invoke-virtual {v1}, Lat/h;->k()Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    sget-object p1, Lcom/google/googlenav/appwidget/friends/g;->e:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_17
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->h:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/google/googlenav/appwidget/friends/c;Z)V
    .registers 6

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->k:Lcom/google/googlenav/appwidget/friends/b;

    invoke-virtual {v2, p1, p2}, Lcom/google/googlenav/appwidget/friends/b;->a(Lcom/google/googlenav/appwidget/friends/c;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private a()Z
    .registers 4

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private b()Lap/d;
    .registers 4

    new-instance v0, Lcom/google/googlenav/appwidget/friends/e;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/appwidget/friends/e;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lap/c;)V

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lap/d;->a(J)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/appwidget/friends/g;)V
    .registers 5

    new-instance v0, Lap/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/friends/d;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/appwidget/friends/d;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V

    invoke-direct {v0, v1, v2}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lap/b;->g()V

    return-void
.end method

.method private c(Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;
    .registers 7

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    monitor-enter v1

    :goto_7
    :try_start_7
    invoke-virtual {v1}, Lat/h;->e()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Lat/h;->g()V

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;

    move-result-object v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_11

    sget-object v1, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/friends/g;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_b4

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    :goto_26
    return-object v0

    :pswitch_27
    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->c:Lcom/google/googlenav/appwidget/friends/i;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/i;)Lcom/google/googlenav/appwidget/friends/c;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/c;Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_26

    :pswitch_33
    sget-object v0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->l:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:Lap/d;

    invoke-virtual {v0}, Lap/d;->g()V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->b:Lcom/google/googlenav/appwidget/friends/i;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/i;)Lcom/google/googlenav/appwidget/friends/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/c;Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->b:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_26

    :pswitch_4a
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/googlenav/appwidget/friends/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_6a

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_75

    :cond_6a
    new-instance v0, Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/appwidget/friends/h;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/d;)V

    invoke-static {v0}, Lax/r;->a(Lcom/google/googlenav/aX;)V

    :goto_72
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->c:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_26

    :cond_75
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->g:LaY/a;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {v2, p0, v4}, Lcom/google/googlenav/appwidget/friends/h;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/d;)V

    invoke-virtual {v0, v1, v4, v2}, LaY/a;->a(ILcom/google/googlenav/android/ac;LaY/f;)V

    goto :goto_72

    :pswitch_81
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->c:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_26

    :pswitch_84
    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->a:Lcom/google/googlenav/appwidget/friends/i;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/i;)Lcom/google/googlenav/appwidget/friends/c;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/c;Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/friends/c;->b()V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_26

    :pswitch_93
    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->b:Lcom/google/googlenav/appwidget/friends/i;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/i;)Lcom/google/googlenav/appwidget/friends/c;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/c;Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    goto :goto_26

    :pswitch_9f
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:Lap/d;

    invoke-virtual {v0}, Lap/d;->c()I

    sget-object v0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->l:Lar/u;

    invoke-virtual {v0}, Lar/u;->b()V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->stopSelf()V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    goto/16 :goto_26

    :pswitch_b0
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    goto/16 :goto_26

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_27
        :pswitch_33
        :pswitch_4a
        :pswitch_81
        :pswitch_84
        :pswitch_93
        :pswitch_9f
        :pswitch_b0
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->h:Ljava/util/List;

    return-object v0
.end method

.method private final c()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic d(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Lay/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lay/a;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lad/a;

    invoke-direct {v0}, Lad/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a:Lad/a;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a:Lad/a;

    invoke-virtual {v0, p0}, Lad/a;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/google/googlenav/appwidget/friends/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/friends/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->k:Lcom/google/googlenav/appwidget/friends/b;

    new-instance v0, LaY/a;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, v1}, LaY/a;-><init>(Lap/c;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->g:LaY/a;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:Lap/d;

    if-nez v0, :cond_2d

    monitor-enter p0

    :try_start_26
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b()Lap/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:Lap/d;

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_3a

    :cond_2d
    new-instance v0, Lay/a;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lay/a;-><init>(Lcom/google/googlenav/android/ac;Lap/c;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lay/a;

    return-void

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a:Lad/a;

    invoke-virtual {v0}, Lad/a;->a()V

    if-nez p1, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto :goto_7

    :cond_1d
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->e:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto :goto_7

    :cond_23
    const-string v0, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lax/aA;->q()V

    goto :goto_7

    :cond_3f
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_MANUAL"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto :goto_7

    :cond_65
    const-string v0, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.UPDATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.UPDATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto/16 :goto_7

    :cond_8f
    const-string v0, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto/16 :goto_7

    :cond_a2
    const-string v0, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto/16 :goto_7

    :cond_b5
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/g;)V

    goto/16 :goto_7
.end method
