.class public Lcom/google/ads/internal/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/google/ads/ah;

.field private c:Lcom/google/ads/internal/c;

.field private d:Lcom/google/ads/AdRequest;

.field private e:Lcom/google/ads/internal/r;

.field private f:Lcom/google/ads/internal/e;

.field private g:Lcom/google/ads/internal/t;

.field private h:Landroid/os/Handler;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/content/SharedPreferences;

.field private o:J

.field private p:Lcom/google/ads/h;

.field private q:Z

.field private r:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private u:Ljava/lang/Boolean;

.field private v:Lcom/google/ads/t;

.field private w:Lcom/google/ads/u;

.field private x:Lcom/google/ads/y;

.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/internal/m;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/ah;Z)V
    .registers 11

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/internal/m;->t:I

    iput-object v5, p0, Lcom/google/ads/internal/m;->y:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iput-boolean p2, p0, Lcom/google/ads/internal/m;->q:Z

    new-instance v0, Lcom/google/ads/internal/r;

    invoke-direct {v0}, Lcom/google/ads/internal/r;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/m;->e:Lcom/google/ads/internal/r;

    iput-object v5, p0, Lcom/google/ads/internal/m;->c:Lcom/google/ads/internal/c;

    iput-object v5, p0, Lcom/google/ads/internal/m;->d:Lcom/google/ads/AdRequest;

    iput-boolean v1, p0, Lcom/google/ads/internal/m;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/m;->h:Landroid/os/Handler;

    iput-wide v6, p0, Lcom/google/ads/internal/m;->o:J

    iput-boolean v1, p0, Lcom/google/ads/internal/m;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/m;->m:Z

    if-eqz p1, :cond_35

    iget-object v0, p1, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_36

    :cond_35
    :goto_35
    return-void

    :cond_36
    sget-object v1, Lcom/google/ads/internal/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_39
    iget-object v0, p1, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "GoogleAdMobAdsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/m;->n:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_ae

    iget-object v0, p0, Lcom/google/ads/internal/m;->n:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/ads/ah;->b:Lcom/google/ads/util/z;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-gez v0, :cond_a8

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/ads/internal/m;->i:J

    :goto_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_39 .. :try_end_72} :catchall_ab

    new-instance v0, Lcom/google/ads/h;

    invoke-direct {v0, p0}, Lcom/google/ads/h;-><init>(Lcom/google/ads/internal/m;)V

    iput-object v0, p0, Lcom/google/ads/internal/m;->p:Lcom/google/ads/h;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/m;->r:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/m;->s:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/google/ads/internal/m;->a()V

    iget-object v0, p1, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    new-instance v0, Lcom/google/ads/t;

    invoke-direct {v0}, Lcom/google/ads/t;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/m;->v:Lcom/google/ads/t;

    new-instance v0, Lcom/google/ads/u;

    invoke-direct {v0, p0}, Lcom/google/ads/u;-><init>(Lcom/google/ads/internal/m;)V

    iput-object v0, p0, Lcom/google/ads/internal/m;->w:Lcom/google/ads/u;

    iput-object v5, p0, Lcom/google/ads/internal/m;->u:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/google/ads/internal/m;->x:Lcom/google/ads/y;

    goto :goto_35

    :cond_a8
    :try_start_a8
    iput-wide v2, p0, Lcom/google/ads/internal/m;->i:J

    goto :goto_71

    :catchall_ab
    move-exception v0

    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_ab

    throw v0

    :cond_ae
    const-wide/32 v2, 0xea60

    :try_start_b1
    iput-wide v2, p0, Lcom/google/ads/internal/m;->i:J
    :try_end_b3
    .catchall {:try_start_b1 .. :try_end_b3} :catchall_ab

    goto :goto_71
.end method

.method private a(Lcom/google/ads/y;Ljava/lang/Boolean;)V
    .registers 9

    invoke-virtual {p1}, Lcom/google/ads/y;->d()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {p1}, Lcom/google/ads/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/ads/y;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/ads/y;->c()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/internal/m;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    move-object v0, p0

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/internal/m;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_15
    move-object v1, p1

    goto :goto_d
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/ads/r;->a()Lcom/google/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/r;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/ads/r;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v1, v1, Lcom/google/ads/ah;->b:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v8}, Lcom/google/ads/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/g;

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v1, v0}, Lcom/google/ads/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_26

    :cond_5c
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v1, Lcom/google/ads/internal/e;

    iget-object v2, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->i:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/s;

    invoke-virtual {v0}, Lcom/google/ads/internal/s;->b()Lcom/google/ads/d;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ads/internal/e;-><init>(Lcom/google/ads/ah;Lcom/google/ads/d;)V

    iput-object v1, p0, Lcom/google/ads/internal/m;->f:Lcom/google/ads/internal/e;

    iget-object v0, p0, Lcom/google/ads/internal/m;->f:Lcom/google/ads/internal/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/e;->setVisibility(I)V

    sget-object v0, Lcom/google/ads/internal/g;->c:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    invoke-virtual {v2}, Lcom/google/ads/ah;->b()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/ads/internal/t;->a(Lcom/google/ads/internal/m;Ljava/util/Map;ZZ)Lcom/google/ads/internal/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/m;->g:Lcom/google/ads/internal/t;

    iget-object v0, p0, Lcom/google/ads/internal/m;->f:Lcom/google/ads/internal/e;

    iget-object v1, p0, Lcom/google/ads/internal/m;->g:Lcom/google/ads/internal/t;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ae;

    iget-object v0, v0, Lcom/google/ads/ae;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/af;

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/af;->a:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_71

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->i:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/s;

    invoke-virtual {v0}, Lcom/google/ads/internal/s;->a()Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "Disabling hardware acceleration for a banner."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->f:Lcom/google/ads/internal/e;

    invoke-virtual {v0}, Lcom/google/ads/internal/e;->b()V
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_73

    :cond_71
    monitor-exit p0

    return-void

    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(F)V
    .registers 4

    monitor-enter p0

    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-long v0, v0

    :try_start_5
    iput-wide v0, p0, Lcom/google/ads/internal/m;->o:J
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/ads/internal/m;->t:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .registers 7

    sget-object v1, Lcom/google/ads/internal/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/ads/internal/m;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v3, v3, Lcom/google/ads/ah;->b:Lcom/google/ads/util/z;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lcom/google/ads/internal/m;->q:Z

    if-eqz v0, :cond_2c

    iput-wide p1, p0, Lcom/google/ads/internal/m;->i:J

    :cond_2c
    monitor-exit v1

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->e:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->e:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public declared-synchronized a(Landroid/view/View;Lcom/google/ads/aa;Lcom/google/ads/y;Z)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "AdManager.onReceiveGWhirlAd() called."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/m;->k:Z

    iput-object p3, p0, Lcom/google/ads/internal/m;->x:Lcom/google/ads/y;

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/google/ads/internal/m;->a(Landroid/view/View;)V

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/ads/internal/m;->a(Lcom/google/ads/y;Ljava/lang/Boolean;)V

    :cond_1d
    iget-object v0, p0, Lcom/google/ads/internal/m;->w:Lcom/google/ads/u;

    invoke-virtual {v0, p2}, Lcom/google/ads/u;->a(Lcom/google/ads/aa;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v1, v1, Lcom/google/ads/ah;->f:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1}, Lcom/google/ads/c;->d(Lcom/google/ads/a;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    :cond_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/ads/internal/m;->c:Lcom/google/ads/internal/c;

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_4e

    invoke-virtual {p0}, Lcom/google/ads/internal/m;->k()Lcom/google/ads/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/r;->n()V

    :cond_17
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_4c

    iget-object v1, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v1, v1, Lcom/google/ads/ah;->f:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1, p1}, Lcom/google/ads/c;->a(Lcom/google/ads/a;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_4c
    .catchall {:try_start_2 .. :try_end_4c} :catchall_5a

    :cond_4c
    monitor-exit p0

    return-void

    :cond_4e
    :try_start_4e
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/google/ads/internal/m;->k()Lcom/google/ads/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/r;->l()V
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_5a

    goto :goto_17

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/AdRequest;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/ads/internal/m;->n()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1a

    goto :goto_c

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/internal/m;->n:Landroid/content/SharedPreferences;

    const-string v1, "GoogleAdMobDoritosLife"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/google/ads/k;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->c:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/ads/k;->a(Landroid/app/Activity;)V

    :cond_65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/m;->k:Z

    iget-object v0, p0, Lcom/google/ads/internal/m;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object p1, p0, Lcom/google/ads/internal/m;->d:Lcom/google/ads/AdRequest;

    iget-object v0, p0, Lcom/google/ads/internal/m;->v:Lcom/google/ads/t;

    invoke-virtual {v0}, Lcom/google/ads/t;->a()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/google/ads/internal/m;->w:Lcom/google/ads/u;

    iget-object v1, p0, Lcom/google/ads/internal/m;->v:Lcom/google/ads/t;

    invoke-virtual {v1}, Lcom/google/ads/t;->b()Lcom/google/ads/s;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/u;->a(Lcom/google/ads/s;Lcom/google/ads/AdRequest;)V

    goto :goto_c

    :cond_83
    new-instance v0, Lcom/google/ads/internal/c;

    invoke-direct {v0, p0}, Lcom/google/ads/internal/c;-><init>(Lcom/google/ads/internal/m;)V

    iput-object v0, p0, Lcom/google/ads/internal/m;->c:Lcom/google/ads/internal/c;

    iget-object v0, p0, Lcom/google/ads/internal/m;->c:Lcom/google/ads/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest;)V
    :try_end_8f
    .catchall {:try_start_1d .. :try_end_8f} :catchall_1a

    goto/16 :goto_c
.end method

.method public declared-synchronized a(Lcom/google/ads/s;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/ads/internal/m;->c:Lcom/google/ads/internal/c;

    invoke-virtual {p1}, Lcom/google/ads/s;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/google/ads/s;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/m;->a(F)V

    invoke-virtual {p0}, Lcom/google/ads/internal/m;->p()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/ads/internal/m;->e()V

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/ads/internal/m;->w:Lcom/google/ads/u;

    iget-object v1, p0, Lcom/google/ads/internal/m;->d:Lcom/google/ads/AdRequest;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/u;->a(Lcom/google/ads/s;Lcom/google/ads/AdRequest;)V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_2e

    monitor-exit p0

    return-void

    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lcom/google/ads/internal/m;->p()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/ads/internal/m;->d()V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_1b

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/internal/m;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
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

    iput-object v0, p0, Lcom/google/ads/internal/m;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/internal/m;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/m;->y:Ljava/lang/String;

    :cond_59
    return-void
.end method

.method protected declared-synchronized a(Ljava/util/LinkedList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding a click tracking URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_5

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2b
    :try_start_2b
    iput-object p1, p0, Lcom/google/ads/internal/m;->s:Ljava/util/LinkedList;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/internal/m;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/m;->y:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized b(J)V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_16

    :try_start_7
    iget-object v0, p0, Lcom/google/ads/internal/m;->n:Landroid/content/SharedPreferences;

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

.method public declared-synchronized b(Lcom/google/ads/s;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "AdManager.onGWhirlNoFill() called."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/s;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/m;->a(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v1, v1, Lcom/google/ads/ah;->f:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/c;->a(Lcom/google/ads/a;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding a tracking URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->r:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/m;->u:Ljava/lang/Boolean;

    return-void
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/internal/m;->m:Z

    const-string v0, "Refreshing is no longer allowed on this AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/m;->l:Z

    if-eqz v0, :cond_16

    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/m;->p:Lcom/google/ads/h;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/m;->l:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    :goto_14
    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_14

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/google/ads/internal/m;->m:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/google/ads/internal/m;->l:Z

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/ads/internal/m;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/m;->p:Lcom/google/ads/h;

    iget-wide v2, p0, Lcom/google/ads/internal/m;->o:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/m;->l:Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_43

    :goto_3b
    monitor-exit p0

    return-void

    :cond_3d
    :try_start_3d
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    goto :goto_3b

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_46
    :try_start_46
    const-string v0, "Refreshing disabled on this AdView"

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_3b

    :cond_4c
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_43

    goto :goto_3b
.end method

.method public f()Lcom/google/ads/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    return-object v0
.end method

.method public declared-synchronized g()Lcom/google/ads/t;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/m;->v:Lcom/google/ads/t;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Lcom/google/ads/internal/c;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/m;->c:Lcom/google/ads/internal/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()Lcom/google/ads/internal/e;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/m;->f:Lcom/google/ads/internal/e;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Lcom/google/ads/internal/t;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/m;->g:Lcom/google/ads/internal/t;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()Lcom/google/ads/internal/r;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/m;->e:Lcom/google/ads/internal/r;

    return-object v0
.end method

.method public declared-synchronized l()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/ads/internal/m;->t:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()J
    .registers 3

    iget-wide v0, p0, Lcom/google/ads/internal/m;->i:J

    return-wide v0
.end method

.method public declared-synchronized n()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/m;->c:Lcom/google/ads/internal/c;
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

.method public declared-synchronized o()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/m;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/m;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/m;->e:Lcom/google/ads/internal/r;

    invoke-virtual {v0}, Lcom/google/ads/internal/r;->o()V

    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v1, v1, Lcom/google/ads/ah;->f:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/a;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v1, v1, Lcom/google/ads/ah;->f:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1}, Lcom/google/ads/c;->c(Lcom/google/ads/a;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v1, v1, Lcom/google/ads/ah;->f:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1}, Lcom/google/ads/c;->b(Lcom/google/ads/a;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/m;->e:Lcom/google/ads/internal/r;

    invoke-virtual {v0}, Lcom/google/ads/internal/r;->b()V

    invoke-virtual {p0}, Lcom/google/ads/internal/m;->w()V

    return-void
.end method

.method public declared-synchronized u()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->c:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_14

    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_38

    :cond_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/google/ads/internal/m;->r:Ljava/util/LinkedList;

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

    new-instance v4, Lcom/google/ads/g;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

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

.method public declared-synchronized v()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/m;->d:Lcom/google/ads/AdRequest;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->g:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/google/ads/util/AdUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->d:Lcom/google/ads/AdRequest;

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/m;->a(Lcom/google/ads/AdRequest;)V

    :goto_2d
    iget-object v0, p0, Lcom/google/ads/internal/m;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/m;->p:Lcom/google/ads/h;

    iget-wide v2, p0, Lcom/google/ads/internal/m;->o:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_3e

    :goto_36
    monitor-exit p0

    return-void

    :cond_38
    :try_start_38
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_36

    :cond_47
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_3e

    goto :goto_36
.end method

.method protected declared-synchronized w()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->c:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_14

    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_38

    :cond_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/google/ads/internal/m;->s:Ljava/util/LinkedList;

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

    new-instance v4, Lcom/google/ads/g;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

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

.method protected declared-synchronized x()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/ads/internal/m;->c:Lcom/google/ads/internal/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/m;->k:Z

    iget-object v0, p0, Lcom/google/ads/internal/m;->f:Lcom/google/ads/internal/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/ads/internal/m;->f:Lcom/google/ads/internal/e;

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/m;->a(Landroid/view/View;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/ads/internal/m;->e:Lcom/google/ads/internal/r;

    invoke-virtual {v0}, Lcom/google/ads/internal/r;->c()V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    invoke-virtual {v0}, Lcom/google/ads/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/ads/internal/m;->u()V

    :cond_2a
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/google/ads/internal/m;->b:Lcom/google/ads/ah;

    iget-object v1, v1, Lcom/google/ads/ah;->f:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1}, Lcom/google/ads/c;->d(Lcom/google/ads/a;)V
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_4a

    :cond_48
    monitor-exit p0

    return-void

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
