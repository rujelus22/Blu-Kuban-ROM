.class public Lcom/google/android/maps/driveabout/app/NavigationActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/google/googlenav/android/aa;


# static fields
.field private static a:J


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/google/android/maps/driveabout/app/NavigationView;

.field private g:Lcom/google/android/maps/driveabout/app/LoadingView;

.field private h:Lcom/google/android/maps/driveabout/app/am;

.field private i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

.field private j:Lcom/google/android/maps/driveabout/app/NavigationService;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/os/Handler;

.field private final p:Landroid/content/ServiceConnection;

.field private final q:Lcom/google/android/maps/driveabout/app/p;

.field private final r:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Z

    new-instance v0, Lcom/google/android/maps/driveabout/app/bU;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bU;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/google/android/maps/driveabout/app/p;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Lcom/google/android/maps/driveabout/app/p;

    new-instance v0, Lcom/google/android/maps/driveabout/app/ca;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ca;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->r:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(J)J
    .registers 4

    sget-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/NavigationService;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/app/LoadingView;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/cb;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/LoadingView;->a(Lcom/google/android/maps/driveabout/app/bI;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private a(I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_d2

    :goto_5
    :sswitch_5
    return v3

    :sswitch_6
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->onSearchRequested()Z

    goto :goto_5

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/dO;->a(Z)V

    goto :goto_5

    :sswitch_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/dO;->b(Z)V

    goto :goto_5

    :sswitch_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->e()V

    goto :goto_5

    :sswitch_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r()Lt/at;

    move-result-object v0

    invoke-virtual {v0}, Lt/at;->a()Lt/au;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/google/android/maps/driveabout/app/dO;->a(Lt/au;Z)V

    goto :goto_5

    :sswitch_40
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/google/android/maps/driveabout/app/dO;->a(ZZ)V

    goto :goto_5

    :sswitch_4a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/app/dO;->a(ZZ)V

    goto :goto_5

    :sswitch_54
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->f()V

    goto :goto_5

    :sswitch_5e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/google/googlenav/M;->ad()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :sswitch_71
    const-string v0, "A"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/driveabout/app/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :sswitch_81
    const-string v0, "I"

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/am;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bX;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bX;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/am;->b(Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_5

    :cond_98
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->j()Z

    goto/16 :goto_5

    :sswitch_a3
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    goto/16 :goto_5

    :sswitch_a8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->f(Z)V

    goto/16 :goto_5

    :sswitch_b3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/dO;->f(Z)V

    goto/16 :goto_5

    :sswitch_be
    invoke-static {}, LC/f;->h()LC/f;

    move-result-object v0

    invoke-virtual {v0}, LC/f;->f()V

    goto/16 :goto_5

    :sswitch_c7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v()V

    goto/16 :goto_5

    :sswitch_data_d2
    .sparse-switch
        0x7f0f00c8 -> :sswitch_54
        0x7f0f00c9 -> :sswitch_6
        0x7f0f00ca -> :sswitch_28
        0x7f0f00cb -> :sswitch_a3
        0x7f0f00cc -> :sswitch_71
        0x7f0f00cd -> :sswitch_5e
        0x7f0f00f0 -> :sswitch_14
        0x7f0f00f1 -> :sswitch_a
        0x7f0f00f2 -> :sswitch_5
        0x7f0f00f3 -> :sswitch_5
        0x7f0f00f4 -> :sswitch_54
        0x7f0f0412 -> :sswitch_1e
        0x7f0f0413 -> :sswitch_40
        0x7f0f0414 -> :sswitch_4a
        0x7f0f0415 -> :sswitch_1e
        0x7f0f0416 -> :sswitch_81
        0x7f0f0417 -> :sswitch_a8
        0x7f0f0418 -> :sswitch_b3
        0x7f0f0419 -> :sswitch_be
        0x7f0f041a -> :sswitch_c7
    .end sparse-switch
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    return p1
.end method

.method public static b()J
    .registers 2

    sget-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d:Landroid/view/ViewGroup;

    return-object p1
.end method

.method private b(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h()V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationMapView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private f()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.suggest.android.SuggestProvider.INIT_SUGGEST_PROVIDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-object v0
.end method

.method private g()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h()V

    return-void
.end method

.method private h()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/cc;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/cc;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lz/n;->a(Landroid/content/Context;Lat/h;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f()V

    return-void
.end method

.method private i()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/am;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/am;

    return-object v0
.end method

.method private j()V
    .registers 4

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "log_frame_render_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    new-instance v1, Lq/H;

    invoke-direct {v1}, Lq/H;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/ca;)V

    :cond_1d
    return-void
.end method

.method private k()V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/am;

    new-instance v3, Lcom/google/android/maps/driveabout/app/cd;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/maps/driveabout/app/cd;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;J)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ce;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ce;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/app/am;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o()V

    return-void
.end method

.method private l()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic l(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l()V

    return-void
.end method

.method private m()V
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Ln/a;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/google/android/maps/driveabout/app/cf;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cf;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    :cond_c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/am;

    new-instance v2, Lcom/google/android/maps/driveabout/app/cg;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/cg;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/ch;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/ch;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/app/am;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private n()V
    .registers 2

    new-instance v0, Lcom/google/android/maps/driveabout/app/bV;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bV;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c:Z

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ci;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m()V

    goto :goto_9

    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-nez v0, :cond_26

    new-instance v0, Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j()V

    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    const-string v0, ")"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Z

    goto :goto_9
.end method

.method private p()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/am;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/NavigationMapView;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    const v2, 0x7f0f00e8

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Landroid/view/ViewGroup;)V

    :cond_4a
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/app/NavigationView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->stopService(Landroid/content/Intent;)Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->finish()V

    return-void
.end method

.method public d()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.maps.driveabout.app.STARTING_NAVIGATION_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public e()Lcom/google/android/maps/driveabout/app/am;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/am;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/am;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bZ;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bZ;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-static {p0, p2, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/eS;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/eV;)V

    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a()V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v2, p0}, Lcom/google/android/maps/driveabout/app/p;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x48

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "Show Disclaimer"

    invoke-static {p0, v2, v0}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.apps.maps.REPLAY_LOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    :goto_43
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    new-instance v0, Lcom/google/android/maps/driveabout/app/am;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/am;

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-eqz v0, :cond_6d

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k()V

    :goto_53
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->r:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.googlenav.suggest.android.SuggestProvider.SUGGEST_PROVIDER_CREATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o:Landroid/os/Handler;

    :goto_6a
    return-void

    :cond_6b
    move v0, v1

    goto :goto_43

    :cond_6d
    if-eqz p1, :cond_7b

    const-string v0, "IsActivityRestart"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g()V

    goto :goto_53

    :cond_7b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_a1

    invoke-static {p0}, Lcom/google/googlenav/android/Y;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->finish()V

    goto :goto_6a

    :cond_a1
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Landroid/content/Intent;)V

    goto :goto_53
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/dO;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d()V

    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->f()V

    :cond_1a
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    :cond_24
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->d(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_27

    const-string v0, "I"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->j()Z

    move-result v0

    :goto_26
    return v0

    :cond_27
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_26
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/dO;->k()V

    :goto_11
    return v0

    :cond_12
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k:Z

    goto :goto_11

    :cond_15
    const/16 v1, 0x52

    if-ne p1, v1, :cond_29

    invoke-static {}, Laf/d;->b()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/dO;->l()V

    goto :goto_11

    :cond_29
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onLowMemory()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k()V

    :cond_9
    return-void
.end method

.method public onMenuButtonClick(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Laf/d;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->l()V

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->openOptionsMenu()V

    goto :goto_13
.end method

.method public onMenuItemClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(I)Z

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "UserRequestedReroute"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 3

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->c()V

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c()V

    :cond_1b
    const-string v0, "("

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    :cond_2c
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->e()V

    :cond_37
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    :cond_43
    return-void

    :cond_44
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-nez v0, :cond_12

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->b()Z

    move-result v0

    if-nez v0, :cond_4e

    :cond_4e
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ci;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c:Z

    if-eqz v0, :cond_12

    :cond_58
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k:Z

    goto :goto_12
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/maps/driveabout/app/bS;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/bS;-><init>(Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/bS;)V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->b()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "IsActivityRestart"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public s()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->k()Lu/P;

    move-result-object v1

    :goto_b
    if-nez v1, :cond_10

    :goto_d
    return-object v0

    :cond_e
    move-object v1, v0

    goto :goto_b

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://maps.google.com/?"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "nav"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=1&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "daddr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lu/P;->d()Lu/Q;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_39
    invoke-virtual {v1}, Lu/P;->c()Lt/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_34
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-nez p3, :cond_10

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r()Lt/at;

    move-result-object v0

    invoke-virtual {v0}, Lt/at;->c()Lt/W;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/bY;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/app/bY;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;Ljava/lang/String;ZZ)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v2

    invoke-virtual {v2, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(Landroid/os/Bundle;Lt/W;Lcom/google/android/maps/driveabout/app/eA;)V

    goto :goto_8
.end method
