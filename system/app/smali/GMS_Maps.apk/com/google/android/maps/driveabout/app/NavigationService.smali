.class public Lcom/google/android/maps/driveabout/app/NavigationService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:J


# instance fields
.field private A:Lcom/google/android/maps/driveabout/app/a;

.field private b:Lcom/google/android/maps/driveabout/app/cU;

.field private c:Lac/p;

.field private d:Lo/r;

.field private e:Lcom/google/android/maps/driveabout/app/dD;

.field private f:Lcom/google/android/maps/driveabout/app/aN;

.field private g:Lcom/google/android/maps/driveabout/app/cK;

.field private h:Lcom/google/android/maps/driveabout/app/cL;

.field private i:Lm/o;

.field private j:Lk/j;

.field private k:Lk/G;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Lcom/google/android/maps/driveabout/app/ad;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private final t:Landroid/content/BroadcastReceiver;

.field private final u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/content/BroadcastReceiver;

.field private w:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

.field private x:Lo/o;

.field private final y:Landroid/content/ServiceConnection;

.field private final z:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/driveabout/app/NavigationService;->a:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    .line 157
    new-instance v0, Lcom/google/android/maps/driveabout/app/cv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/cv;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/co;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->t:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v0, Lcom/google/android/maps/driveabout/app/co;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/co;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->u:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Lcom/google/android/maps/driveabout/app/cp;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cp;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->v:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/google/android/maps/driveabout/app/cq;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cq;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->y:Landroid/content/ServiceConnection;

    .line 242
    new-instance v0, Lcom/google/android/maps/driveabout/app/cw;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cw;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Landroid/os/IBinder;

    return-void
.end method

.method private static a(Landroid/content/res/Configuration;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 595
    if-nez p0, :cond_c

    move v1, v0

    .line 598
    :goto_4
    and-int/lit8 v2, v1, 0xf

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 599
    and-int/lit8 v0, v1, 0x30

    .line 601
    :cond_b
    return v0

    .line 595
    :cond_c
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_4
.end method

.method private a(Ljava/lang/String;ZI)Landroid/content/Intent;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 798
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 800
    invoke-static {v7}, Lcom/google/android/maps/driveabout/app/dh;->a(Z)V

    .line 802
    new-instance v6, Lk/O;

    invoke-direct {v6, p0, v1}, Lk/O;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 803
    invoke-virtual {v6}, Lk/O;->e()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 806
    :cond_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    if-eqz v0, :cond_22

    .line 807
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    invoke-virtual {v0}, Lk/G;->c()V

    .line 811
    :goto_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    invoke-virtual {v0}, Lk/G;->join()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_9d

    .line 818
    :cond_22
    new-instance v0, Lk/G;

    invoke-direct {v0}, Lk/G;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    .line 819
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lm/o;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    invoke-virtual {v0, v2}, Lm/o;->a(Lk/G;)V

    .line 823
    if-eqz p2, :cond_6f

    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 825
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->f()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v3

    .line 827
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    new-instance v2, Lk/I;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {v2, v4, v3}, Lk/I;-><init>(Lcom/google/android/maps/driveabout/app/dD;Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v0, v2}, Lk/G;->a(Lk/P;)V

    .line 830
    new-instance v0, Lk/b;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cK;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-direct/range {v0 .. v5}, Lk/b;-><init>(Ljava/lang/String;Lk/k;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/aN;)V

    .line 833
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    invoke-virtual {v1, v0}, Lk/G;->a(Lk/b;)V

    .line 836
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    invoke-virtual {v1, v7}, Lk/G;->a(Z)V

    .line 837
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    new-instance v2, Lcom/google/android/maps/driveabout/app/cu;

    invoke-direct {v2, p0, v0}, Lcom/google/android/maps/driveabout/app/cu;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lk/b;)V

    invoke-virtual {v1, v2}, Lk/G;->a(Lk/H;)V

    .line 845
    :cond_6f
    if-ltz p3, :cond_87

    .line 846
    if-nez p3, :cond_7b

    .line 847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p3, v0

    .line 849
    :cond_7b
    new-instance v0, Lk/M;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dD;

    int-to-long v2, p3

    const/16 v4, 0x1e

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lk/M;-><init>(Lcom/google/android/maps/driveabout/app/dD;JII)V

    .line 851
    :cond_87
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    invoke-virtual {v0, v6}, Lk/G;->a(LA/f;)V

    .line 853
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v6}, Lk/O;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 854
    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 855
    return-object v0

    .line 813
    :catch_9d
    move-exception v0

    goto/16 :goto_1d
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/aN;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->w:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationService;Lo/o;)Lo/o;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lo/o;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 750
    const-string v0, "DriveAbout"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 752
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 753
    const-string v1, "InterruptedDestination"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    const-string v1, "InterruptedChimeBeforeSpeech"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 755
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 756
    return-void
.end method

.method private a(Landroid/content/Intent;II)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->v()V

    .line 428
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a()V

    .line 434
    if-nez p1, :cond_2b

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    const-string v1, "NavigationService:onStartInternal"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_2a
    :goto_2a
    return-void

    .line 444
    :cond_2b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.maps.driveabout.REPLAY_LOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    .line 446
    :goto_3e
    const-string v1, "event_log"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    if-eqz v2, :cond_58

    const/4 v1, 0x1

    .line 448
    :goto_47
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->r:Z

    .line 450
    if-eqz v0, :cond_5a

    if-nez v1, :cond_5a

    .line 453
    const-string v0, "NavigationService"

    const-string v1, "onStartInternal. Received a \"com.google.android.maps.driveabout.REPLAY_LOG\" intent without an associated \"event_log\" extra."

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 444
    :cond_56
    const/4 v0, 0x0

    goto :goto_3e

    .line 447
    :cond_58
    const/4 v1, 0x0

    goto :goto_47

    .line 456
    :cond_5a
    if-nez v0, :cond_f3

    if-eqz v1, :cond_f3

    .line 459
    const-string v0, "NavigationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartInternal. Ignoring \"event_log\" extra in a \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" intent. Event logs should only be specified in a \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.google.android.maps.driveabout.REPLAY_LOG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" intent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v0, "event_log"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 475
    :cond_91
    :goto_91
    const/4 v0, 0x1

    .line 476
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_dd

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 479
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 480
    new-instance v7, Lcom/google/android/maps/driveabout/app/bj;

    invoke-direct {v7, v5}, Lcom/google/android/maps/driveabout/app/bj;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->a()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 482
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->e()V

    .line 483
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->i()I

    move-result v6

    .line 484
    const/4 v0, 0x2

    if-ne v6, v0, :cond_116

    .line 485
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 493
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cK;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->k()Lcom/google/android/maps/driveabout/app/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bw;->g()V

    move v0, v6

    .line 571
    :cond_dd
    :goto_dd
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->l:Ljava/lang/String;

    .line 573
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v1

    if-nez v1, :cond_1fd

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1fd

    .line 580
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->g()V

    goto/16 :goto_2a

    .line 463
    :cond_f3
    if-eqz v0, :cond_91

    if-eqz v1, :cond_91

    .line 466
    const-string v0, "is_feature_test"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->r:Z

    .line 467
    const-string v0, "random_ui_seed"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 469
    :try_start_107
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->r:Z

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Ljava/lang/String;ZI)Landroid/content/Intent;
    :try_end_10c
    .catch Ljava/lang/RuntimeException; {:try_start_107 .. :try_end_10c} :catch_10e

    move-result-object p1

    goto :goto_91

    .line 470
    :catch_10e
    move-exception v0

    .line 471
    const-string v1, "Unable to replay the event log: "

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_91

    .line 495
    :cond_116
    const/4 v0, 0x3

    if-ne v6, v0, :cond_144

    .line 497
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cL;->a()V

    .line 498
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->A:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/a;->b(I)V

    .line 499
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(I)V

    .line 500
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    if-eqz v0, :cond_1ec

    .line 501
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    new-instance v1, Lk/A;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lk/A;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lk/j;->a(LA/j;)V

    move v0, v6

    goto :goto_dd

    .line 506
    :cond_144
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->d()[Lo/P;

    move-result-object v1

    .line 507
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->e()I

    move-result v2

    .line 508
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->g()[Lo/b;

    move-result-object v3

    .line 509
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->h()Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->s:Ljava/lang/String;

    .line 512
    const/4 v0, 0x5

    if-ne v6, v0, :cond_189

    .line 516
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->c()Lo/P;

    move-result-object v0

    .line 517
    const/4 v5, 0x2

    new-array v5, v5, [Lo/P;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    aput-object v7, v5, v0

    .line 518
    invoke-static {p0}, Lo/H;->a(Landroid/content/Context;)Lo/H;

    move-result-object v0

    .line 519
    invoke-virtual {v0, v5}, Lo/H;->a([Lo/P;)Lo/a;

    move-result-object v5

    .line 521
    invoke-virtual {v0}, Lo/H;->d()V

    .line 522
    if-eqz v5, :cond_186

    .line 523
    const-string v0, "~"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aN;->a([Lo/P;I[Lo/b;Ljava/lang/String;Lo/a;)V

    :cond_186
    move v0, v6

    .line 529
    goto/16 :goto_dd

    .line 534
    :cond_189
    const-string v0, "UserRequestedReroute"

    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 536
    iget-object v8, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cK;

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/app/cK;->l()Lcom/google/android/maps/driveabout/app/cL;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/app/cL;->b()Landroid/content/Intent;

    move-result-object v8

    .line 538
    if-nez v0, :cond_1ae

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->l:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ec

    invoke-virtual {v8}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ec

    .line 540
    :cond_1ae
    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->k()Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 545
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bj;->b()Lo/P;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lo/P;->d()Lo/Q;

    move-result-object v5

    .line 547
    invoke-virtual {v0}, Lo/P;->c()Ln/s;

    move-result-object v7

    .line 548
    if-eqz v5, :cond_1d0

    .line 549
    invoke-virtual {v5}, Lo/Q;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    if-nez v7, :cond_1ef

    const/4 v0, 0x0

    :goto_1cd
    invoke-static {p0, v5, v8, v0}, Lcom/google/googlenav/provider/SearchHistoryProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lat/B;)V

    .line 556
    :cond_1d0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->A:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/a;->b(I)V

    .line 557
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/aN;->a([Lo/P;I[Lo/b;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    if-eqz v0, :cond_1ec

    .line 560
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    new-instance v1, Lk/A;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lk/A;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lk/j;->a(LA/j;)V

    :cond_1ec
    move v0, v6

    goto/16 :goto_dd

    .line 549
    :cond_1ef
    new-instance v0, Lat/B;

    invoke-virtual {v7}, Ln/s;->a()I

    move-result v9

    invoke-virtual {v7}, Ln/s;->a()I

    move-result v7

    invoke-direct {v0, v9, v7}, Lat/B;-><init>(II)V

    goto :goto_1cd

    .line 584
    :cond_1fd
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->T()V

    .line 588
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->f()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 589
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->d()V

    goto/16 :goto_2a
.end method

.method private a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 368
    if-nez p1, :cond_31

    move-object v1, v0

    .line 370
    :goto_4
    if-nez p1, :cond_36

    .line 387
    :goto_6
    new-instance v2, Lcom/google/android/maps/driveabout/app/ct;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/ct;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    .line 394
    invoke-static {}, Lcom/google/android/maps/driveabout/power/a;->a()Lcom/google/android/maps/driveabout/power/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/power/f;->a(Lcom/google/android/maps/driveabout/power/i;)Lcom/google/android/maps/driveabout/power/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/power/f;->a(Landroid/view/Window;)Lcom/google/android/maps/driveabout/power/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/power/f;->a(Lcom/google/android/maps/driveabout/power/e;)Lcom/google/android/maps/driveabout/power/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/power/f;->a()V

    .line 398
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PowerManagerEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 403
    if-nez v0, :cond_30

    .line 404
    const-string v0, "UserPreference"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    .line 406
    :cond_30
    return-void

    .line 368
    :cond_31
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    goto :goto_4

    .line 370
    :cond_36
    new-instance v0, Lcom/google/android/maps/driveabout/app/cs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/cs;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    goto :goto_6
.end method

.method private a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 740
    const-string v0, "InterruptedDestination"

    invoke-static {p0, v0, p1}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->n:Z

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cL;->a()V

    .line 916
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->c()V

    .line 917
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 918
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationService;)Z
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->m()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->w:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/NavigationService;)Lo/o;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lo/o;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/NavigationService;)Lo/r;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lo/r;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/a;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->A:Lcom/google/android/maps/driveabout/app/a;

    return-object v0
.end method

.method private m()V
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->m:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->n:Z

    if-eqz v0, :cond_1b

    .line 216
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->V()V

    .line 217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 218
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->U()V

    .line 230
    :cond_1a
    :goto_1a
    return-void

    .line 221
    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->W()V

    .line 222
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->Q()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 223
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 224
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->R()V

    goto :goto_1a

    .line 226
    :cond_3a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->S()V

    goto :goto_1a
.end method

.method private n()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 764
    const-string v0, "InterruptedDestination"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lt/q;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    const-string v1, "InterruptedChimeBeforeSpeech"

    invoke-static {p0, v1, v4}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 771
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cL;->a()V

    .line 772
    if-eqz v0, :cond_32

    .line 773
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 775
    const-string v0, "UserRequestedReroute"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0, v2, v4}, Lcom/google/android/maps/driveabout/app/NavigationService;->onStart(Landroid/content/Intent;I)V

    .line 777
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->A:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Z)V

    .line 783
    :goto_31
    return-void

    .line 781
    :cond_32
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->stopSelf()V

    goto :goto_31
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 610
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/res/Configuration;)I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_17

    .line 612
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->b(I)V

    .line 619
    :goto_16
    return-void

    .line 613
    :cond_17
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/res/Configuration;)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_26

    .line 615
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->b(I)V

    goto :goto_16

    .line 617
    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->L()V

    goto :goto_16
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->A:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/a;->a(Z)V

    .line 631
    const-string v0, "InterruptedChimeBeforeSpeech"

    invoke-static {p0, v0, p1}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 633
    return-void
.end method

.method public a([Lo/P;I[Lo/b;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 922
    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bj;->a([Lo/P;I[Lo/b;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 924
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    if-eqz v1, :cond_1e

    .line 925
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    new-instance v2, Lk/A;

    invoke-direct {v2, v0}, Lk/A;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lk/j;->a(LA/j;)V

    .line 927
    :cond_1e
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->l:Ljava/lang/String;

    .line 928
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Ljava/lang/String;)V

    .line 930
    :cond_23
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    if-nez v0, :cond_10

    .line 654
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->b()V

    .line 655
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    .line 657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    .line 659
    :cond_10
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    if-eqz v0, :cond_19

    .line 671
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->f()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    .line 675
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    .line 677
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    .line 683
    if-eqz v0, :cond_19

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    .line 687
    :cond_19
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->q:Z

    if-nez v0, :cond_9

    .line 704
    const-string v0, "Activity paused, no service. "

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b(Ljava/lang/String;)V

    .line 706
    :cond_9
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->c()V

    .line 715
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 722
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->f()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_e

    .line 725
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    .line 729
    :goto_d
    return-void

    .line 727
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->stopSelf()V

    goto :goto_d
.end method

.method public h()Lcom/google/android/maps/driveabout/app/dD;
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dD;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->A:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->r:Z

    return v0
.end method

.method public k()Lo/P;
    .registers 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    if-eqz v0, :cond_b

    .line 946
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v0

    .line 948
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public l()I
    .registers 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    if-eqz v0, :cond_b

    .line 957
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v0

    .line 959
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 247
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/app/Application;)V

    .line 248
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 252
    new-instance v0, Lcom/google/android/maps/driveabout/app/ad;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Lcom/google/android/maps/driveabout/app/ad;

    .line 254
    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/cU;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lcom/google/android/maps/driveabout/app/cU;

    .line 255
    invoke-static {}, Lac/h;->b()Lac/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:Lac/p;

    .line 258
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:Lac/p;

    invoke-interface {v0, v10}, Lac/p;->a(Z)V

    .line 262
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:Lac/p;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lac/p;->c(I)V

    .line 269
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v2, Lcom/google/android/maps/driveabout/app/cr;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/cr;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    invoke-static {v1, v0, v2, v10}, Lt/m;->a(Landroid/content/Context;Lac/h;Ljava/lang/Runnable;Z)V

    .line 279
    invoke-static {v10}, Lcom/google/android/maps/driveabout/app/dh;->a(Z)V

    .line 280
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->b(Z)V

    .line 283
    invoke-static {v1}, Lo/r;->a(Landroid/content/Context;)Lo/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lo/r;

    .line 286
    new-instance v0, Lm/o;

    invoke-direct {v0, v1}, Lm/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lm/o;

    .line 287
    new-instance v0, Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/dD;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dD;

    .line 289
    new-instance v0, Lcom/google/android/maps/driveabout/app/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/a;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->A:Lcom/google/android/maps/driveabout/app/a;

    .line 291
    new-instance v3, Lcom/google/android/maps/driveabout/app/bw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:Lac/p;

    invoke-direct {v3, v1, v0}, Lcom/google/android/maps/driveabout/app/bw;-><init>(Landroid/content/Context;Lac/p;)V

    .line 293
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 294
    new-instance v0, Lk/j;

    invoke-direct {v0, v1}, Lk/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    .line 295
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lm/o;

    const-string v2, "gps"

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    invoke-virtual {v4}, Lk/j;->b()Lm/c;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lm/o;->a(Ljava/lang/String;Lm/c;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lm/o;

    const-string v2, "network"

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    invoke-virtual {v4}, Lk/j;->b()Lm/c;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lm/o;->a(Ljava/lang/String;Lm/c;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lm/o;

    const-string v2, "android_orientation"

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    invoke-virtual {v4}, Lk/j;->b()Lm/c;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lm/o;->a(Ljava/lang/String;Lm/c;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    invoke-static {v0}, LA/f;->a(LA/f;)V

    .line 307
    :cond_9b
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cL;->a(Landroid/app/Service;)Lcom/google/android/maps/driveabout/app/cL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cL;

    .line 308
    new-instance v0, Lcom/google/android/maps/driveabout/app/aN;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/aN;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    .line 309
    new-instance v0, Lcom/google/android/maps/driveabout/app/cK;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->A:Lcom/google/android/maps/driveabout/app/a;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cL;

    new-instance v5, Lcom/google/android/maps/driveabout/vector/ee;

    invoke-static {}, Lac/h;->b()Lac/p;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/maps/driveabout/vector/ee;-><init>(Lac/p;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cK;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/bw;Lcom/google/android/maps/driveabout/app/cL;Lcom/google/android/maps/driveabout/vector/ee;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cK;

    .line 315
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cK;

    new-instance v2, Lcom/google/android/maps/driveabout/app/dn;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/app/dn;-><init>()V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lo/r;

    invoke-static {v1, v0, v2, v3, v4}, Ls/n;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/cI;Lcom/google/android/maps/driveabout/app/aN;Lo/r;)Ls/n;

    move-result-object v9

    .line 317
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dD;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lo/r;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lm/o;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Lcom/google/android/maps/driveabout/app/ad;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->A:Lcom/google/android/maps/driveabout/app/a;

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/maps/driveabout/app/aN;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/dD;Lo/r;Lm/o;Lcom/google/android/maps/driveabout/app/ad;Lcom/google/android/maps/driveabout/app/a;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dD;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cK;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lk/j;

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/aN;LA/f;Ls/n;)V

    .line 322
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->t:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->v:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 331
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 332
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->f()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    .line 341
    if-nez v0, :cond_11d

    .line 342
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->n()V

    .line 351
    :cond_11d
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v2

    invoke-virtual {v2}, Lt/k;->D()Z

    move-result v2

    if-nez v2, :cond_132

    .line 352
    invoke-static {v1}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a(Landroid/content/Context;)V

    .line 353
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    .line 354
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lo/r;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Lo/r;)V

    .line 363
    :cond_132
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/ca;->a(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    .line 364
    iput-boolean v10, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->q:Z

    .line 365
    return-void
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 860
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 863
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    if-eqz v0, :cond_f

    .line 864
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    invoke-virtual {v0}, Lk/G;->c()V

    .line 865
    iput-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lk/G;

    .line 867
    :cond_f
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/Context;)V

    .line 868
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 869
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 870
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 874
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lm/o;

    invoke-virtual {v0}, Lm/o;->j()V

    .line 875
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->A:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->l()V

    .line 876
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lcom/google/android/maps/driveabout/app/cU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cU;->d()V

    .line 877
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lo/r;

    invoke-virtual {v0}, Lo/r;->b()V

    .line 879
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lo/r;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->b(Lo/r;)V

    .line 881
    const-string v0, "g"

    invoke-static {}, Lcom/google/android/maps/driveabout/app/dc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/android/maps/driveabout/app/NavigationService;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 884
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->ag()F

    move-result v2

    .line 886
    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->s:Ljava/lang/String;

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/di;->a(ILjava/lang/String;I)V

    .line 888
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    if-eqz v0, :cond_63

    .line 889
    const-string v0, "Service destroyed and activity paused. "

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b(Ljava/lang/String;)V

    .line 893
    :cond_63
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cL;->a()V

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->q:Z

    .line 896
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->a()V

    .line 897
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/ca;->a(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    .line 898
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/Intent;II)V

    .line 414
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/Intent;II)V

    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 2
    .parameter

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->g()V

    .line 907
    return-void
.end method
