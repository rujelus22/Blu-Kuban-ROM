.class public final Lcom/google/ads/a/q;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/google/ads/am;

.field private c:Lcom/google/ads/a/j;

.field private d:Lcom/google/ads/d;

.field private e:Lcom/google/ads/a/v;

.field private f:Lcom/google/ads/a/c;

.field private g:Lcom/google/ads/a/x;

.field private h:Landroid/os/Handler;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/content/SharedPreferences;

.field private o:J

.field private p:Lcom/google/ads/k;

.field private q:Z

.field private r:Ljava/util/LinkedList;

.field private s:Ljava/util/LinkedList;

.field private t:I

.field private u:Ljava/lang/Boolean;

.field private v:Lcom/google/ads/y;

.field private w:Lcom/google/ads/z;

.field private x:Lcom/google/ads/ad;

.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/a/q;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/am;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/a/q;->t:I

    iput-object v4, p0, Lcom/google/ads/a/q;->y:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iput-boolean v2, p0, Lcom/google/ads/a/q;->q:Z

    new-instance v0, Lcom/google/ads/a/v;

    invoke-direct {v0}, Lcom/google/ads/a/v;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/q;->e:Lcom/google/ads/a/v;

    iput-object v4, p0, Lcom/google/ads/a/q;->c:Lcom/google/ads/a/j;

    iput-object v4, p0, Lcom/google/ads/a/q;->d:Lcom/google/ads/d;

    iput-boolean v2, p0, Lcom/google/ads/a/q;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/q;->h:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/a/q;->o:J

    iput-boolean v2, p0, Lcom/google/ads/a/q;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/q;->m:Z

    if-eqz p1, :cond_35

    iget-object v0, p1, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_36

    :cond_35
    :goto_35
    return-void

    :cond_36
    sget-object v1, Lcom/google/ads/a/q;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_39
    iget-object v0, p1, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "GoogleAdMobAdsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/q;->n:Landroid/content/SharedPreferences;

    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/google/ads/a/q;->i:J

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_39 .. :try_end_50} :catchall_86

    new-instance v0, Lcom/google/ads/k;

    invoke-direct {v0, p0}, Lcom/google/ads/k;-><init>(Lcom/google/ads/a/q;)V

    iput-object v0, p0, Lcom/google/ads/a/q;->p:Lcom/google/ads/k;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/q;->r:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/q;->s:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/google/ads/a/q;->a()V

    iget-object v0, p1, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    new-instance v0, Lcom/google/ads/y;

    invoke-direct {v0}, Lcom/google/ads/y;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/q;->v:Lcom/google/ads/y;

    new-instance v0, Lcom/google/ads/z;

    invoke-direct {v0, p0}, Lcom/google/ads/z;-><init>(Lcom/google/ads/a/q;)V

    iput-object v0, p0, Lcom/google/ads/a/q;->w:Lcom/google/ads/z;

    iput-object v4, p0, Lcom/google/ads/a/q;->u:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/ads/a/q;->x:Lcom/google/ads/ad;

    goto :goto_35

    :catchall_86
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->e:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->e:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 14

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/ads/v;->a()Lcom/google/ads/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/v;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ads/v;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v1, v1, Lcom/google/ads/am;->b:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "@gw_adlocid@"

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_qdata@"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sdkver@"

    const-string v6, "afma-sdk-a-v6.0.0"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sessid@"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_seqnum@"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_devid@"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_6a

    const-string v0, "@gw_adnetid@"

    invoke-virtual {v1, v0, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6a
    if-eqz p2, :cond_72

    const-string v0, "@gw_allocid@"

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_72
    if-eqz p5, :cond_83

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "1"

    :goto_7c
    const-string v6, "@gw_adnetrefresh@"

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_83
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/google/ads/j;

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v7, v1, v0}, Lcom/google/ads/j;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_26

    :cond_9b
    const-string v0, "0"

    goto :goto_7c

    :cond_9e
    return-void
.end method

.method private declared-synchronized v()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/q;->c:Lcom/google/ads/a/j;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized w()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_14

    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_38

    :cond_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/google/ads/a/q;->r:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/j;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/j;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_38

    goto :goto_1a

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized x()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_14

    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_38

    :cond_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/google/ads/a/q;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/j;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/j;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_38

    goto :goto_1a

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v1, Lcom/google/ads/a/c;

    iget-object v2, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->b()Lcom/google/ads/g;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ads/a/c;-><init>(Lcom/google/ads/am;Lcom/google/ads/g;)V

    iput-object v1, p0, Lcom/google/ads/a/q;->f:Lcom/google/ads/a/c;

    iget-object v0, p0, Lcom/google/ads/a/q;->f:Lcom/google/ads/a/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/a/c;->setVisibility(I)V

    sget-object v0, Lcom/google/ads/a/e;->c:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    invoke-virtual {v2}, Lcom/google/ads/am;->b()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/ads/a/x;->a(Lcom/google/ads/a/q;Ljava/util/Map;ZZ)Lcom/google/ads/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/q;->g:Lcom/google/ads/a/x;

    iget-object v0, p0, Lcom/google/ads/a/q;->f:Lcom/google/ads/a/c;

    iget-object v1, p0, Lcom/google/ads/a/q;->g:Lcom/google/ads/a/x;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(F)V
    .registers 4

    monitor-enter p0

    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-long v0, v0

    :try_start_5
    iput-wide v0, p0, Lcom/google/ads/a/q;->o:J
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/ads/a/q;->t:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .registers 7

    sget-object v1, Lcom/google/ads/a/q;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/ads/a/q;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v3, v3, Lcom/google/ads/am;->b:Lcom/google/ads/util/ab;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lcom/google/ads/a/q;->q:Z

    if-eqz v0, :cond_28

    iput-wide p1, p0, Lcom/google/ads/a/q;->i:J

    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Landroid/view/View;Lcom/google/ads/ae;Lcom/google/ads/ad;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "AdManager.onReceiveGWhirlAd() called."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/q;->k:Z

    iput-object p3, p0, Lcom/google/ads/a/q;->x:Lcom/google/ads/ad;

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    invoke-virtual {v0}, Lcom/google/ads/am;->a()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-direct {p0, p1}, Lcom/google/ads/a/q;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p3}, Lcom/google/ads/ad;->d()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-virtual {p3}, Lcom/google/ads/ad;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/ads/ad;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/ads/ad;->c()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/a/q;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_3b
    iget-object v0, p0, Lcom/google/ads/a/q;->w:Lcom/google/ads/z;

    invoke-virtual {v0, p2}, Lcom/google/ads/z;->a(Lcom/google/ads/ae;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->j:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    :cond_53
    monitor-exit p0

    return-void

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/d;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/ads/a/q;->v()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1a

    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    invoke-static {}, Lcom/google/ads/AdActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "loadAd called while an interstitial or landing page is displayed, so aborting"

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1a

    goto :goto_c

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/a/q;->n:Landroid/content/SharedPreferences;

    const-string v1, "GoogleAdMobDoritosLife"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/google/ads/m;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/ads/m;->a(Landroid/app/Activity;)V

    :cond_65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/q;->k:Z

    iget-object v0, p0, Lcom/google/ads/a/q;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object p1, p0, Lcom/google/ads/a/q;->d:Lcom/google/ads/d;

    iget-object v0, p0, Lcom/google/ads/a/q;->v:Lcom/google/ads/y;

    invoke-virtual {v0}, Lcom/google/ads/y;->a()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/google/ads/a/q;->w:Lcom/google/ads/z;

    iget-object v1, p0, Lcom/google/ads/a/q;->v:Lcom/google/ads/y;

    invoke-virtual {v1}, Lcom/google/ads/y;->b()Lcom/google/ads/w;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/z;->a(Lcom/google/ads/w;Lcom/google/ads/d;)V

    goto :goto_c

    :cond_83
    new-instance v0, Lcom/google/ads/a/j;

    invoke-direct {v0, p0}, Lcom/google/ads/a/j;-><init>(Lcom/google/ads/a/q;)V

    iput-object v0, p0, Lcom/google/ads/a/q;->c:Lcom/google/ads/a/j;

    iget-object v0, p0, Lcom/google/ads/a/q;->c:Lcom/google/ads/a/j;

    invoke-virtual {v0, p1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/d;)V
    :try_end_8f
    .catchall {:try_start_1d .. :try_end_8f} :catchall_1a

    goto/16 :goto_c
.end method

.method public final declared-synchronized a(Lcom/google/ads/e;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/ads/a/q;->c:Lcom/google/ads/a/j;

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    invoke-virtual {v0}, Lcom/google/ads/am;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    if-ne p1, v0, :cond_42

    iget-object v0, p0, Lcom/google/ads/a/q;->e:Lcom/google/ads/a/v;

    invoke-virtual {v0}, Lcom/google/ads/a/v;->n()V

    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailedToReceiveAd("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->j:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_2 .. :try_end_40} :catchall_4c

    :cond_40
    monitor-exit p0

    return-void

    :cond_42
    :try_start_42
    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/google/ads/a/q;->e:Lcom/google/ads/a/v;

    invoke-virtual {v0}, Lcom/google/ads/a/v;->l()V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_4c

    goto :goto_15

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/w;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/ads/a/q;->c:Lcom/google/ads/a/j;

    invoke-virtual {p1}, Lcom/google/ads/w;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/google/ads/w;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/a/q;->a(F)V

    invoke-virtual {p0}, Lcom/google/ads/a/q;->o()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/ads/a/q;->e()V

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/ads/a/q;->w:Lcom/google/ads/z;

    iget-object v1, p0, Lcom/google/ads/a/q;->d:Lcom/google/ads/d;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/z;->a(Lcom/google/ads/w;Lcom/google/ads/d;)V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_2e

    monitor-exit p0

    return-void

    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lcom/google/ads/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/ads/a/q;->d()V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_1b

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/a/q;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/q;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/a/q;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/q;->y:Ljava/lang/String;

    :cond_59
    return-void
.end method

.method protected final declared-synchronized a(Ljava/util/LinkedList;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding a click tracking URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_5

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_27
    :try_start_27
    iput-object p1, p0, Lcom/google/ads/a/q;->s:Ljava/util/LinkedList;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_24

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/a/q;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/q;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized b(J)V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_16

    :try_start_7
    iget-object v0, p0, Lcom/google/ads/a/q;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/ads/w;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "AdManager.onGWhirlNoFill() called."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/w;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/w;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_1a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/a/q;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->j:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    sget-object v0, Lcom/google/ads/e;->b:Lcom/google/ads/e;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding a tracking URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->r:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/q;->u:Ljava/lang/Boolean;

    return-void
.end method

.method public final declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/a/q;->m:Z

    const-string v0, "Refreshing is no longer allowed on this AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/a/q;->l:Z

    if-eqz v0, :cond_16

    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/a/q;->p:Lcom/google/ads/k;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/q;->l:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    :goto_14
    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_14

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    invoke-virtual {v0}, Lcom/google/ads/am;->a()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/google/ads/a/q;->m:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/google/ads/a/q;->l:Z

    if-nez v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enabling refreshing every "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/ads/a/q;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/a/q;->p:Lcom/google/ads/k;

    iget-wide v2, p0, Lcom/google/ads/a/q;->o:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/q;->l:Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3f

    :goto_37
    monitor-exit p0

    return-void

    :cond_39
    :try_start_39
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3f

    goto :goto_37

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_42
    :try_start_42
    const-string v0, "Refreshing disabled on this AdView"

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_37

    :cond_48
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_3f

    goto :goto_37
.end method

.method public final f()Lcom/google/ads/am;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    return-object v0
.end method

.method public final declared-synchronized g()Lcom/google/ads/y;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/q;->v:Lcom/google/ads/y;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Lcom/google/ads/a/j;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/q;->c:Lcom/google/ads/a/j;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Lcom/google/ads/a/c;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/q;->f:Lcom/google/ads/a/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Lcom/google/ads/a/x;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/q;->g:Lcom/google/ads/a/x;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Lcom/google/ads/a/v;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/q;->e:Lcom/google/ads/a/v;

    return-object v0
.end method

.method public final declared-synchronized l()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/ads/a/q;->t:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()J
    .registers 3

    iget-wide v0, p0, Lcom/google/ads/a/q;->i:J

    return-wide v0
.end method

.method public final declared-synchronized n()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/a/q;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/a/q;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/q;->e:Lcom/google/ads/a/v;

    invoke-virtual {v0}, Lcom/google/ads/a/v;->o()V

    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->j:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->j:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->j:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/q;->e:Lcom/google/ads/a/v;

    invoke-virtual {v0}, Lcom/google/ads/a/v;->b()V

    invoke-direct {p0}, Lcom/google/ads/a/q;->x()V

    return-void
.end method

.method public final declared-synchronized t()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/q;->d:Lcom/google/ads/d;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    invoke-virtual {v0}, Lcom/google/ads/am;->a()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->g:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/google/ads/util/AdUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->d:Lcom/google/ads/d;

    invoke-virtual {p0, v0}, Lcom/google/ads/a/q;->a(Lcom/google/ads/d;)V

    :goto_2d
    iget-object v0, p0, Lcom/google/ads/a/q;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/a/q;->p:Lcom/google/ads/k;

    iget-wide v2, p0, Lcom/google/ads/a/q;->o:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_3e

    :goto_36
    monitor-exit p0

    return-void

    :cond_38
    :try_start_38
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3e

    goto :goto_2d

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_41
    :try_start_41
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_36

    :cond_47
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_3e

    goto :goto_36
.end method

.method protected final declared-synchronized u()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/ads/a/q;->c:Lcom/google/ads/a/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/q;->k:Z

    iget-object v0, p0, Lcom/google/ads/a/q;->f:Lcom/google/ads/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/a/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    invoke-virtual {v0}, Lcom/google/ads/am;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/ads/a/q;->f:Lcom/google/ads/a/c;

    invoke-direct {p0, v0}, Lcom/google/ads/a/q;->a(Landroid/view/View;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/ads/a/q;->e:Lcom/google/ads/a/v;

    invoke-virtual {v0}, Lcom/google/ads/a/v;->c()V

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    invoke-virtual {v0}, Lcom/google/ads/am;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/google/ads/a/q;->w()V

    :cond_2a
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->j:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/ads/a/q;->b:Lcom/google/ads/am;

    iget-object v0, v0, Lcom/google/ads/am;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_44

    :cond_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method
