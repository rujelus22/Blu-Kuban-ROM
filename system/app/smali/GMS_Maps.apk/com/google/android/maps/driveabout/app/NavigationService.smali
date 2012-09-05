.class public Lcom/google/android/maps/driveabout/app/NavigationService;
.super Landroid/app/Service;


# static fields
.field private static a:J


# instance fields
.field private b:Lcom/google/android/maps/driveabout/app/dg;

.field private c:Lat/h;

.field private d:Lu/r;

.field private e:Lcom/google/android/maps/driveabout/app/dO;

.field private f:Lcom/google/android/maps/driveabout/app/aL;

.field private g:Lcom/google/android/maps/driveabout/app/cW;

.field private h:Lcom/google/android/maps/driveabout/app/cX;

.field private i:Ls/o;

.field private j:Lq/j;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Lcom/google/android/maps/driveabout/app/ae;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private final s:Landroid/content/BroadcastReceiver;

.field private final t:Landroid/content/BroadcastReceiver;

.field private final u:Landroid/content/BroadcastReceiver;

.field private v:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

.field private w:Lu/o;

.field private final x:Landroid/content/ServiceConnection;

.field private final y:Landroid/os/IBinder;

.field private z:Lcom/google/android/maps/driveabout/app/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/driveabout/app/NavigationService;->a:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Z

    new-instance v0, Lcom/google/android/maps/driveabout/app/cH;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/cH;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/cA;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->s:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cA;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cA;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->t:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cB;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cB;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->u:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cC;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cC;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cI;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cI;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->y:Landroid/os/IBinder;

    return-void
.end method

.method private a(Ljava/lang/String;ZI)Landroid/content/Intent;
    .registers 13

    const/4 v8, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/google/android/maps/driveabout/app/ds;->a(Z)V

    new-instance v6, Lq/O;

    invoke-direct {v6, p0, v1}, Lq/O;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v6}, Lq/O;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_14
    new-instance v7, Lq/F;

    invoke-direct {v7}, Lq/F;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Ls/o;

    invoke-virtual {v0, v7}, Ls/o;->a(Lq/F;)V

    if-eqz p2, :cond_55

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->e()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v3

    new-instance v0, Lq/I;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {v0, v2, v3}, Lq/I;-><init>(Lcom/google/android/maps/driveabout/app/dO;Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v7, v0}, Lq/F;->a(Lq/P;)V

    new-instance v0, Lq/b;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lq/j;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cW;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-direct/range {v0 .. v5}, Lq/b;-><init>(Ljava/lang/String;Lq/k;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/cW;Lcom/google/android/maps/driveabout/app/aL;)V

    invoke-virtual {v7, v0}, Lq/F;->a(Lq/b;)V

    invoke-virtual {v7, v8}, Lq/F;->a(Z)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/cG;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/driveabout/app/cG;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lq/b;)V

    invoke-virtual {v7, v1}, Lq/F;->a(Lq/G;)V

    :cond_55
    if-ltz p3, :cond_6d

    if-nez p3, :cond_61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p3, v0

    :cond_61
    new-instance v0, Lq/M;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dO;

    int-to-long v2, p3

    const/16 v4, 0x1e

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lq/M;-><init>(Lcom/google/android/maps/driveabout/app/dO;JII)V

    :cond_6d
    invoke-virtual {v7, v6}, Lq/F;->a(LC/f;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v6}, Lq/O;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/aL;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->v:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationService;Lu/o;)Lu/o;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->w:Lu/o;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    const-string v0, "DriveAbout"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "InterruptedDestination"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "InterruptedChimeBeforeSpeech"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/content/Intent;II)V
    .registers 16

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v0, 0x1

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:Lat/h;

    invoke-virtual {v1}, Lat/h;->t()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a()V

    if-nez p1, :cond_2d

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

    const-string v1, "NavigationService:onStartInternal"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    const-string v1, "event_log"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-boolean v9, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->q:Z

    if-eqz v1, :cond_4c

    const-string v2, "is_feature_test"

    invoke-virtual {p1, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->q:Z

    const-string v2, "random_ui_seed"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :try_start_46
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->q:Z

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Ljava/lang/String;ZI)Landroid/content/Intent;
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4b} :catch_aa

    move-result-object p1

    :cond_4c
    :goto_4c
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_96

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bh;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/google/android/maps/driveabout/app/bh;

    invoke-direct {v7, v5}, Lcom/google/android/maps/driveabout/app/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->a()Z

    move-result v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->d()V

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->i()I

    move-result v6

    if-ne v6, v10, :cond_b1

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->j()Z

    move-result v0

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->j()Lcom/google/android/maps/driveabout/app/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bv;->g()V

    move v0, v6

    :cond_96
    :goto_96
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v1

    if-nez v1, :cond_178

    if-eq v0, v11, :cond_178

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->g()V

    goto :goto_2c

    :catch_aa
    move-exception v1

    const-string v2, "Unable to replay the event log: "

    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c

    :cond_b1
    if-ne v6, v11, :cond_de

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cX;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/a;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lq/j;

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lq/j;

    new-instance v1, Lq/z;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lq/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lq/j;->a(LC/j;)V

    move v0, v6

    goto :goto_96

    :cond_de
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->d()[Lu/P;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->e()I

    move-result v2

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->g()[Lu/b;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->f()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->r:Ljava/lang/String;

    const/4 v8, 0x5

    if-ne v6, v8, :cond_11b

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->c()Lu/P;

    move-result-object v5

    new-array v7, v10, [Lu/P;

    aput-object v5, v7, v9

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    aput-object v5, v7, v0

    invoke-static {p0}, Lu/H;->a(Landroid/content/Context;)Lu/H;

    move-result-object v0

    invoke-virtual {v0, v7}, Lu/H;->a([Lu/P;)Lu/a;

    move-result-object v5

    invoke-virtual {v0}, Lu/H;->d()V

    if-eqz v5, :cond_118

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aL;->a([Lu/P;I[Lu/b;Ljava/lang/String;Lu/a;)V

    :cond_118
    move v0, v6

    goto/16 :goto_96

    :cond_11b
    const-string v0, "UserRequestedReroute"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v8, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/app/cW;->k()Lcom/google/android/maps/driveabout/app/cX;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/app/cX;->b()Landroid/content/Intent;

    move-result-object v8

    if-nez v0, :cond_13f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_175

    invoke-virtual {v8}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_175

    :cond_13f
    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->k()Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/bh;->b()Lu/P;

    move-result-object v0

    invoke-virtual {v0}, Lu/P;->d()Lu/Q;

    move-result-object v0

    if-eqz v0, :cond_159

    invoke-virtual {v0}, Lu/Q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_159
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/a;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/aL;->a([Lu/P;I[Lu/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lq/j;

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lq/j;

    new-instance v1, Lq/z;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lq/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lq/j;->a(LC/j;)V

    :cond_175
    move v0, v6

    goto/16 :goto_96

    :cond_178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->O()V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->e()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->d()V

    goto/16 :goto_2c
.end method

.method private a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_31

    move-object v1, v0

    :goto_4
    if-nez p1, :cond_36

    :goto_6
    new-instance v2, Lcom/google/android/maps/driveabout/app/cF;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/cF;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/power/a;->a()Lcom/google/android/maps/driveabout/power/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/power/f;->a(Lcom/google/android/maps/driveabout/power/i;)Lcom/google/android/maps/driveabout/power/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/power/f;->a(Landroid/view/Window;)Lcom/google/android/maps/driveabout/power/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/power/f;->a(Lcom/google/android/maps/driveabout/power/e;)Lcom/google/android/maps/driveabout/power/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/power/f;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PowerManagerEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "UserPreference"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    :cond_30
    return-void

    :cond_31
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    goto :goto_4

    :cond_36
    new-instance v0, Lcom/google/android/maps/driveabout/app/cE;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/cE;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    goto :goto_6
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "InterruptedDestination"

    invoke-static {p0, v0, p1}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->l()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->v:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/NavigationService;)Lu/o;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->w:Lu/o;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/NavigationService;)Lu/r;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lu/r;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Lcom/google/android/maps/driveabout/app/a;

    return-object v0
.end method

.method private l()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->l:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->m:Z

    if-eqz v0, :cond_1b

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->Q()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->P()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->R()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->L()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->M()V

    goto :goto_1a

    :cond_3a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->N()V

    goto :goto_1a
.end method

.method private m()V
    .registers 6

    const/4 v4, 0x0

    const-string v0, "InterruptedDestination"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterruptedChimeBeforeSpeech"

    invoke-static {p0, v1, v4}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cX;->a()V

    if-eqz v0, :cond_32

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "UserRequestedReroute"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2, v4}, Lcom/google/android/maps/driveabout/app/NavigationService;->onStart(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Z)V

    :goto_31
    return-void

    :cond_32
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->stopSelf()V

    goto :goto_31
.end method

.method private n()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cX;->a()V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->c()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/eB;->b(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->b(I)V

    :goto_14
    return-void

    :cond_15
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/eB;->a(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->b(I)V

    goto :goto_14

    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->F()V

    goto :goto_14
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/a;->a(Z)V

    const-string v0, "InterruptedChimeBeforeSpeech"

    invoke-static {p0, v0, p1}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public a([Lu/P;I[Lu/b;)V
    .registers 7

    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bh;->a([Lu/P;I[Lu/b;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lq/j;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lq/j;

    new-instance v2, Lq/z;

    invoke-direct {v2, v0}, Lq/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lq/j;->a(LC/j;)V

    :cond_1e
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Z

    return v0
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->a()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Z

    :cond_10
    return-void
.end method

.method public d()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->e()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Z

    :cond_19
    return-void
.end method

.method public e()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->n()V

    :cond_7
    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->b()V

    return-void
.end method

.method public g()V
    .registers 2

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->e()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->stopSelf()V

    goto :goto_d
.end method

.method public h()Lcom/google/android/maps/driveabout/app/dO;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dO;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->q:Z

    return v0
.end method

.method public k()Lu/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->y:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 9

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/app/Application;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ae;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->n:Lcom/google/android/maps/driveabout/app/ae;

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/dg;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/dg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lcom/google/android/maps/driveabout/app/dg;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:Lat/h;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:Lat/h;

    invoke-virtual {v0, v7}, Lat/h;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:Lat/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lat/h;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/cD;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/cD;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    invoke-static {v0, v1, v2, v7}, Lz/n;->a(Landroid/content/Context;Lat/h;Ljava/lang/Runnable;Z)V

    invoke-static {v7}, Lcom/google/android/maps/driveabout/app/ds;->a(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->b(Z)V

    invoke-static {p0}, Lu/r;->a(Landroid/content/Context;)Lu/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lu/r;

    new-instance v0, Ls/o;

    invoke-direct {v0, p0}, Ls/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Ls/o;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/dO;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dO;

    new-instance v0, Lcom/google/android/maps/driveabout/app/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/a;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Lcom/google/android/maps/driveabout/app/a;

    new-instance v3, Lcom/google/android/maps/driveabout/app/bv;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:Lat/h;

    invoke-direct {v3, p0, v0}, Lcom/google/android/maps/driveabout/app/bv;-><init>(Landroid/content/Context;Lat/h;)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cX;->a(Landroid/app/Service;)Lcom/google/android/maps/driveabout/app/cX;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cX;

    new-instance v0, Lcom/google/android/maps/driveabout/app/aL;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/aL;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cW;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Lcom/google/android/maps/driveabout/app/a;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cX;

    new-instance v5, Lcom/google/android/maps/driveabout/vector/dl;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/google/android/maps/driveabout/vector/dl;-><init>(Lat/h;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cW;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/bv;Lcom/google/android/maps/driveabout/app/cX;Lcom/google/android/maps/driveabout/vector/dl;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cW;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dO;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lu/r;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Ls/o;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->n:Lcom/google/android/maps/driveabout/app/ae;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Lcom/google/android/maps/driveabout/app/a;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/aL;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/dO;Lu/r;Ls/o;Lcom/google/android/maps/driveabout/app/ae;Lcom/google/android/maps/driveabout/app/a;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dO;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/cW;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lu/r;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Lq/j;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/dO;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cW;Lu/r;Lcom/google/android/maps/driveabout/app/aL;LC/f;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->s:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->u:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->e()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    if-nez v0, :cond_d8

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->m()V

    :cond_d8
    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v1

    invoke-virtual {v1}, Lz/l;->D()Z

    move-result v1

    if-nez v1, :cond_f1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lu/r;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Lu/r;)V

    :cond_f1
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-boolean v7, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    return-void
.end method

.method public onDestroy()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Ls/o;

    invoke-virtual {v0}, Ls/o;->j()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->z:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->l()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lcom/google/android/maps/driveabout/app/dg;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dg;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lu/r;

    invoke-virtual {v0}, Lu/r;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lu/r;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->b(Lu/r;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/android/maps/driveabout/app/NavigationService;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->ab()F

    move-result v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->r:Ljava/lang/String;

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dt;->a(ILjava/lang/String;I)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Z

    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->n()V

    :goto_47
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    return-void

    :cond_50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/cX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cX;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    goto :goto_47
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/Intent;II)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/Intent;II)V

    const/4 v0, 0x1

    return v0
.end method
