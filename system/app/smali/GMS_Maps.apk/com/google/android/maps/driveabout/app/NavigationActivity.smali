.class public Lcom/google/android/maps/driveabout/app/NavigationActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/W;


# static fields
.field private static a:J


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/google/android/maps/driveabout/app/NavigationView;

.field private g:Lcom/google/android/maps/driveabout/app/LoadingView;

.field private h:Lcom/google/android/maps/driveabout/app/al;

.field private i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

.field private j:Lcom/google/android/maps/driveabout/app/NavigationService;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/os/Handler;

.field private final p:Landroid/content/ServiceConnection;

.field private final q:Lcom/google/android/maps/driveabout/app/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Z

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Z

    .line 198
    new-instance v0, Lcom/google/android/maps/driveabout/app/bO;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bO;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Landroid/content/ServiceConnection;

    .line 237
    new-instance v0, Lcom/google/android/maps/driveabout/app/l;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Lcom/google/android/maps/driveabout/app/l;

    return-void
.end method

.method static synthetic a(J)J
    .registers 4
    .parameter

    .prologue
    .line 121
    sget-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/LoadingView;)Lcom/google/android/maps/driveabout/app/LoadingView;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/NavigationService;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 962
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->k()Lo/P;

    move-result-object v1

    .line 963
    :goto_b
    if-nez v1, :cond_10

    .line 966
    :goto_d
    return-object v0

    :cond_e
    move-object v1, v0

    .line 962
    goto :goto_b

    .line 966
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->l()I

    move-result v0

    invoke-static {v1, v0, p1}, Lcom/google/android/maps/driveabout/app/bj;->a(Lo/P;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 397
    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 399
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 920
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 922
    return-void
.end method

.method private a(I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 675
    .line 677
    sparse-switch p1, :sswitch_data_108

    .line 769
    :cond_5
    :goto_5
    :sswitch_5
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v0, :cond_16

    .line 770
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->r()V

    .line 773
    :cond_16
    return v1

    .line 680
    :sswitch_17
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->onSearchRequested()Z

    goto :goto_5

    .line 683
    :sswitch_1b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/dD;->e()V

    goto :goto_5

    .line 686
    :sswitch_25
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/dD;->j()V

    goto :goto_5

    .line 690
    :sswitch_2f
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/dD;->h()V

    goto :goto_5

    .line 693
    :sswitch_39
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->a()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p()Ln/aK;

    move-result-object v2

    invoke-virtual {v2}, Ln/aK;->a()Ln/aL;

    move-result-object v2

    .line 695
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Ln/aL;)V

    goto :goto_5

    .line 698
    :sswitch_51
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 699
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/dD;->d()V

    goto :goto_5

    .line 703
    :sswitch_61
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Z)V

    goto :goto_5

    .line 706
    :sswitch_6b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Z)V

    goto :goto_5

    .line 720
    :sswitch_75
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/dD;->i()V

    goto :goto_5

    .line 723
    :sswitch_7f
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {}, Lcom/google/googlenav/K;->ae()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 728
    :sswitch_93
    const-string v2, "A"

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 729
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/maps/driveabout/app/SettingsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 732
    :sswitch_a4
    const-string v2, "I"

    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 733
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 734
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/al;

    new-instance v3, Lcom/google/android/maps/driveabout/app/bP;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/bP;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/al;->b(Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_5

    .line 743
    :cond_bb
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/dD;->n()Z

    goto/16 :goto_5

    .line 747
    :sswitch_c6
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    goto/16 :goto_5

    .line 750
    :sswitch_cb
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 752
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->s()V

    move v0, v1

    goto/16 :goto_5

    .line 756
    :sswitch_dd
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/app/dD;->g(Z)V

    goto/16 :goto_5

    .line 759
    :sswitch_e8
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/app/dD;->g(Z)V

    goto/16 :goto_5

    .line 762
    :sswitch_f3
    invoke-static {}, LA/f;->j()LA/f;

    move-result-object v2

    invoke-virtual {v2}, LA/f;->h()V

    goto/16 :goto_5

    .line 765
    :sswitch_fc
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->a()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->s()V

    goto/16 :goto_5

    .line 677
    nop

    :sswitch_data_108
    .sparse-switch
        0x7f1000ef -> :sswitch_75
        0x7f1000f0 -> :sswitch_17
        0x7f1000f1 -> :sswitch_39
        0x7f1000f2 -> :sswitch_c6
        0x7f1000f3 -> :sswitch_93
        0x7f1000f4 -> :sswitch_7f
        0x7f100115 -> :sswitch_25
        0x7f100116 -> :sswitch_1b
        0x7f100117 -> :sswitch_51
        0x7f100118 -> :sswitch_cb
        0x7f10011a -> :sswitch_5
        0x7f10011b -> :sswitch_75
        0x7f10011d -> :sswitch_a4
        0x7f1004b8 -> :sswitch_2f
        0x7f1004b9 -> :sswitch_2f
        0x7f1004ba -> :sswitch_17
        0x7f1004bb -> :sswitch_93
        0x7f1004bc -> :sswitch_61
        0x7f1004bd -> :sswitch_6b
        0x7f1004be -> :sswitch_dd
        0x7f1004bf -> :sswitch_e8
        0x7f1004c0 -> :sswitch_f3
        0x7f1004c1 -> :sswitch_fc
    .end sparse-switch
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    return p1
.end method

.method public static b()J
    .registers 2

    .prologue
    .line 425
    sget-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationView;
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationMapView;
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 327
    new-instance v0, Lcom/google/android/maps/driveabout/app/LoadingView;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    .line 328
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bU;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bU;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/LoadingView;->setOnFirstDrawListener(Lcom/google/android/maps/driveabout/app/bK;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setContentView(Landroid/view/View;)V

    .line 345
    return-void
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-object v0
.end method

.method private g()V
    .registers 5

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/app/Application;)V

    .line 356
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/ca;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    .line 362
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/bV;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/bV;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lt/m;->a(Landroid/content/Context;Lac/h;Ljava/lang/Runnable;Z)V

    .line 369
    return-void
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/al;
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/al;

    return-object v0
.end method

.method private h()V
    .registers 3

    .prologue
    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 433
    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 446
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/al;

    new-instance v2, Lcom/google/android/maps/driveabout/app/bW;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/bW;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/bX;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/bX;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/app/al;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 459
    return-void
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f()V

    return-void
.end method

.method private j()V
    .registers 2

    .prologue
    .line 465
    new-instance v0, Lcom/google/android/maps/driveabout/app/bY;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bY;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 482
    return-void
.end method

.method static synthetic j(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g()V

    return-void
.end method

.method private k()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 502
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    if-eqz v0, :cond_a

    .line 542
    :cond_9
    :goto_9
    return-void

    .line 507
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c:Z

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ca;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 508
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i()V

    goto :goto_9

    .line 513
    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-nez v0, :cond_27

    .line 514
    new-instance v0, Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    .line 533
    :cond_27
    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->b(Lcom/google/googlenav/z;)V

    .line 534
    sget-object v0, Lcom/google/googlenav/z;->b:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->b(Lcom/google/googlenav/z;)V

    .line 537
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 538
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    .line 539
    const-string v0, ")"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b()V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Z

    goto :goto_9
.end method

.method static synthetic k(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k()V

    return-void
.end method

.method static synthetic l(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j()V

    return-void
.end method

.method private l()Z
    .registers 3

    .prologue
    .line 623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private m()V
    .registers 4

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    .line 935
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->setDialogManager(Lcom/google/android/maps/driveabout/app/al;)V

    .line 936
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->setMapView(Lcom/google/android/maps/driveabout/app/NavigationMapView;Landroid/view/ViewGroup;)V

    .line 937
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a_()V

    .line 939
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 943
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_4a

    .line 944
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    const v2, 0x7f10010d

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/ViewGroup;)V

    .line 947
    :cond_4a
    return-void
.end method

.method static synthetic m(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/app/NavigationView;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 959
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 954
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 955
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 828
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 829
    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 831
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->stopService(Landroid/content/Intent;)Z

    .line 838
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    if-eqz v0, :cond_19

    .line 839
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    .line 842
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->finish()V

    .line 843
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 925
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.maps.driveabout.app.STARTING_NAVIGATION_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 926
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 409
    invoke-static {}, LA/f;->j()LA/f;

    move-result-object v0

    .line 412
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    .line 413
    invoke-virtual {v0}, LA/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    :cond_16
    return-void
.end method

.method public e()Lcom/google/android/maps/driveabout/app/al;
    .registers 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/al;

    return-object v0
.end method

.method public getNfcUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 973
    const-string v0, "n"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    if-nez v0, :cond_a

    .line 975
    const/4 v0, 0x0

    .line 981
    :goto_9
    return-object v0

    .line 978
    :cond_a
    const-string v1, "N"

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 899
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 900
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/al;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bR;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bR;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-static {p0, p2, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/eE;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/eH;)V

    .line 916
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 586
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 587
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-nez v0, :cond_8

    .line 616
    :cond_7
    :goto_7
    return-void

    .line 590
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k()V

    .line 601
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 604
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m()V

    .line 606
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_2b

    .line 609
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    .line 610
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a()V

    .line 613
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 614
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->r()V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/l;->a(Landroid/app/Activity;)V

    .line 245
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 246
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 247
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 253
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v3, 0x48

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 261
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setDefaultKeyMode(I)V

    .line 264
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_82

    const-string v3, "com.google.android.maps.driveabout.REPLAY_LOG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    move v0, v1

    .line 271
    :goto_50
    const-string v3, "Show Disclaimer"

    invoke-static {p0, v3, v1}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_84

    if-nez v0, :cond_84

    :goto_5a
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    .line 272
    new-instance v0, Lcom/google/android/maps/driveabout/app/al;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/al;

    .line 274
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-eqz v0, :cond_86

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 277
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/al;

    new-instance v3, Lcom/google/android/maps/driveabout/app/bS;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/maps/driveabout/app/bS;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;J)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bT;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bT;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/app/al;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 320
    :goto_7a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o:Landroid/os/Handler;

    .line 321
    :goto_81
    return-void

    :cond_82
    move v0, v2

    .line 270
    goto :goto_50

    :cond_84
    move v1, v2

    .line 271
    goto :goto_5a

    .line 300
    :cond_86
    if-eqz p1, :cond_94

    const-string v0, "IsActivityRestart"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 305
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g()V

    goto :goto_7a

    .line 306
    :cond_94
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_ba

    invoke-static {p0}, Lcom/google/googlenav/android/U;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ba

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    const-class v1, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 313
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->finish()V

    goto :goto_81

    .line 317
    :cond_ba
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f()V

    goto :goto_7a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/dD;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 651
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 653
    const/4 v0, 0x1

    .line 655
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 857
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 858
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/l;->a()V

    .line 859
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_11

    .line 860
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d()V

    .line 862
    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_1a

    .line 863
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->f()V

    .line 865
    :cond_1a
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_24

    .line 867
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ca;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    .line 869
    :cond_24
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 788
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

    .line 792
    const-string v0, "I"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 793
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->n()Z

    move-result v0

    .line 795
    :goto_26
    return v0

    :cond_27
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_26
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 800
    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    .line 801
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v1, :cond_12

    .line 802
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/dD;->o()V

    .line 820
    :cond_11
    :goto_11
    return v0

    .line 808
    :cond_12
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k:Z

    goto :goto_11

    .line 810
    :cond_15
    const/16 v1, 0x52

    if-ne p1, v1, :cond_2d

    .line 811
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 813
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v1, :cond_11

    .line 814
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/dD;->p()V

    goto :goto_11

    .line 820
    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_9

    .line 779
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j()V

    .line 781
    :cond_9
    return-void
.end method

.method public onMenuButtonClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 632
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_13

    .line 633
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->p()V

    .line 638
    :cond_13
    :goto_13
    return-void

    .line 636
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->openOptionsMenu()V

    goto :goto_13
.end method

.method public onMenuItemClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(I)Z

    .line 645
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 388
    const-string v1, "UserRequestedReroute"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setIntent(Landroid/content/Intent;)V

    .line 391
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Landroid/content/Intent;)V

    .line 392
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 670
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 671
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 546
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 547
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/l;->c()V

    .line 549
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_4d

    .line 550
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->c()V

    .line 557
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_1b

    .line 558
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b_()V

    .line 560
    :cond_1b
    const-string v0, "("

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 561
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    if-eqz v0, :cond_2c

    .line 562
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    .line 567
    :cond_2c
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 568
    invoke-static {p0}, Lcom/google/googlenav/android/V;->a(Landroid/app/Activity;)V

    .line 570
    :cond_35
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Z

    .line 572
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_40

    .line 573
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->e()V

    .line 578
    :cond_40
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-eqz v0, :cond_4c

    .line 579
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->a()V

    .line 580
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    .line 582
    :cond_4c
    return-void

    .line 551
    :cond_4d
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-nez v0, :cond_12

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->c()Z

    move-result v0

    if-nez v0, :cond_57

    :cond_57
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ca;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c:Z

    if-eqz v0, :cond_12

    .line 555
    :cond_61
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k:Z

    goto :goto_12
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_14

    .line 661
    new-instance v0, Lcom/google/android/maps/driveabout/app/bM;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/bM;-><init>(Landroid/view/Menu;)V

    .line 662
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/bM;)V

    .line 663
    const/4 v0, 0x1

    .line 665
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 486
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 487
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/l;->b()V

    .line 488
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k()V

    .line 491
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 492
    invoke-static {p0, p0}, Lcom/google/googlenav/android/V;->a(Landroid/app/Activity;Lcom/google/googlenav/android/W;)V

    .line 494
    :cond_14
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 847
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 848
    const-string v0, "IsActivityRestart"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 849
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 895
    :cond_10
    :goto_10
    return-void

    .line 880
    :cond_11
    if-nez p3, :cond_18

    .line 881
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 883
    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p()Ln/aK;

    move-result-object v0

    invoke-virtual {v0}, Ln/aK;->c()Ln/ab;

    move-result-object v0

    .line 885
    new-instance v1, Lcom/google/android/maps/driveabout/app/bQ;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/app/bQ;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;Ljava/lang/String;ZZ)V

    .line 894
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v2

    invoke-virtual {v2, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/os/Bundle;Ln/ab;Lcom/google/android/maps/driveabout/app/er;)V

    goto :goto_10
.end method
