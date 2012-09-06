.class public Lcom/google/android/maps/driveabout/app/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/maps/driveabout/app/NavigationService;

.field private final c:Lcom/google/android/maps/driveabout/app/j;

.field private d:Li/ab;

.field private e:Li/S;

.field private f:Li/S;

.field private final g:Li/S;

.field private final h:Li/c;

.field private final i:Li/c;

.field private j:Lcom/google/android/maps/driveabout/app/g;

.field private k:Lcom/google/android/maps/driveabout/app/g;

.field private l:Lcom/google/android/maps/driveabout/app/g;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private final q:Lcom/google/android/maps/driveabout/app/aH;

.field private final r:Ljava/util/HashMap;

.field private s:I

.field private t:Li/U;

.field private u:J

.field private v:Landroid/os/Handler;

.field private w:Z

.field private final x:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/a;->o:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->p:Z

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->r:Ljava/util/HashMap;

    .line 115
    iput v1, p0, Lcom/google/android/maps/driveabout/app/a;->s:I

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->x:Ljava/util/Set;

    .line 380
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    .line 381
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/a;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    .line 382
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->v:Landroid/os/Handler;

    .line 384
    new-instance v0, Li/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Li/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Li/ab;

    .line 385
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Li/ab;

    new-instance v1, Lcom/google/android/maps/driveabout/app/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/e;-><init>(Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/b;)V

    invoke-virtual {v0, v1}, Li/ab;->a(Li/ad;)V

    .line 387
    invoke-static {}, Lac/h;->b()Lac/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Li/E;->a(Lac/p;Landroid/content/Context;)Li/E;

    move-result-object v0

    .line 390
    new-instance v1, Li/t;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Li/t;-><init>(Landroid/content/Context;Li/B;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->g:Li/S;

    .line 392
    new-instance v0, Li/I;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Li/I;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->h:Li/c;

    .line 393
    new-instance v0, Li/ag;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Li/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->i:Li/c;

    .line 395
    new-instance v0, Lcom/google/android/maps/driveabout/app/j;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Lcom/google/android/maps/driveabout/app/j;

    .line 396
    new-instance v0, Lcom/google/android/maps/driveabout/app/aH;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->q:Lcom/google/android/maps/driveabout/app/aH;

    .line 397
    iget v0, p0, Lcom/google/android/maps/driveabout/app/a;->s:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/a;->c(I)V

    .line 398
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/a;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->v:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lo/j;Z)Li/U;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 873
    const/4 v0, 0x0

    .line 874
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v1

    invoke-virtual {v1}, Lo/I;->b()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_55

    .line 877
    if-eqz p2, :cond_3a

    .line 878
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    .line 888
    const v1, 0x7f0d000f

    .line 889
    const/4 v0, 0x6

    .line 908
    :goto_1e
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Li/r;

    invoke-direct {v2, v0}, Li/r;-><init>(I)V

    invoke-static {p1, v1, v2}, Li/U;->a(Lo/j;Ljava/lang/CharSequence;Li/l;)Li/U;

    move-result-object v0

    .line 918
    :cond_2d
    :goto_2d
    return-object v0

    .line 880
    :pswitch_2e
    const v1, 0x7f0d000d

    .line 881
    const/16 v0, 0x9

    .line 882
    goto :goto_1e

    .line 884
    :pswitch_34
    const v1, 0x7f0d000e

    .line 885
    const/16 v0, 0xa

    .line 886
    goto :goto_1e

    .line 893
    :cond_3a
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_76

    .line 903
    const v1, 0x7f0d0012

    .line 904
    const/4 v0, 0x5

    goto :goto_1e

    .line 895
    :pswitch_4a
    const v1, 0x7f0d0010

    .line 896
    const/4 v0, 0x7

    .line 897
    goto :goto_1e

    .line 899
    :pswitch_4f
    const v1, 0x7f0d0011

    .line 900
    const/16 v0, 0x8

    .line 901
    goto :goto_1e

    .line 911
    :cond_55
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v1

    invoke-virtual {v1}, Lo/I;->o()Landroid/text/Spanned;

    move-result-object v1

    .line 912
    invoke-virtual {p1}, Lo/j;->j()Li/l;

    move-result-object v2

    .line 913
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2d

    .line 914
    invoke-static {p1, v1, v2}, Li/U;->a(Lo/j;Ljava/lang/CharSequence;Li/l;)Li/U;

    move-result-object v0

    goto :goto_2d

    .line 878
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_34
    .end packed-switch

    .line 893
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4f
    .end packed-switch
.end method

.method private a(Lcom/google/android/maps/driveabout/app/g;)V
    .registers 2
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    .line 838
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/g;->a()V

    .line 839
    return-void
.end method

.method private a(Li/U;)V
    .registers 4
    .parameter

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/a;->t:Li/U;

    .line 1044
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/a;->u:J

    .line 1045
    return-void
.end method

.method private declared-synchronized a(Li/U;Lcom/google/android/maps/driveabout/app/d;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 801
    monitor-enter p0

    if-nez p1, :cond_a

    .line 802
    if-eqz p2, :cond_8

    .line 803
    :try_start_5
    invoke-interface {p2}, Lcom/google/android/maps/driveabout/app/d;->a()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_21

    .line 830
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 807
    :cond_a
    :try_start_a
    new-instance v1, Lcom/google/android/maps/driveabout/app/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/maps/driveabout/app/g;-><init>(Lcom/google/android/maps/driveabout/app/a;Li/U;Lcom/google/android/maps/driveabout/app/d;)V

    .line 808
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    .line 809
    :goto_15
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/g;->a(Lcom/google/android/maps/driveabout/app/g;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 812
    if-eqz p2, :cond_8

    .line 813
    invoke-interface {p2}, Lcom/google/android/maps/driveabout/app/d;->a()V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_21

    goto :goto_8

    .line 801
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 808
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    goto :goto_15

    .line 817
    :cond_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_46

    .line 822
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->l:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->l:Lcom/google/android/maps/driveabout/app/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/g;->e(Lcom/google/android/maps/driveabout/app/g;)Lcom/google/android/maps/driveabout/app/d;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 823
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->l:Lcom/google/android/maps/driveabout/app/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/g;->e(Lcom/google/android/maps/driveabout/app/g;)Lcom/google/android/maps/driveabout/app/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/d;->a()V

    .line 825
    :cond_40
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->l:Lcom/google/android/maps/driveabout/app/g;

    .line 829
    :goto_42
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/a;->a(Li/U;)V

    goto :goto_8

    .line 827
    :cond_46
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/g;)V
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_21

    goto :goto_42
.end method

.method private a(Lo/j;)V
    .registers 2
    .parameter

    .prologue
    .line 643
    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 593
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_17

    .line 594
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 595
    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 597
    :goto_11
    return v0

    .line 595
    :cond_12
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto :goto_11

    .line 597
    :cond_17
    const/4 v0, 0x1

    goto :goto_11
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Lcom/google/android/maps/driveabout/app/j;

    return-object v0
.end method

.method private b(Lo/j;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 713
    new-instance v1, Lcom/google/android/maps/driveabout/app/c;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/app/c;-><init>(Lo/j;)V

    .line 714
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/c;->a()Lo/j;

    .line 715
    const/4 v0, 0x0

    :goto_9
    const/16 v2, 0xa

    if-ge v0, v2, :cond_25

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 716
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/c;->a()Lo/j;

    move-result-object v2

    .line 717
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/a;->x:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 718
    invoke-direct {p0, v2, p2}, Lcom/google/android/maps/driveabout/app/a;->c(Lo/j;I)V

    .line 715
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 721
    :cond_25
    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/a;)Li/c;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->i:Li/c;

    return-object v0
.end method

.method private c(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 996
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lo/O;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v3

    .line 997
    const-string v0, "VoiceGuidanceEnabled"

    invoke-virtual {v3, v0, v1}, Lt/s;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_45

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    .line 1002
    const-string v0, "AlertMode"

    invoke-virtual {v3, v0, v1}, Lt/s;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1003
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_23

    .line 1004
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    .line 1009
    :cond_23
    const-string v0, "VolumeMode"

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Lt/s;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1010
    if-eqz v0, :cond_2e

    if-ne v0, v1, :cond_30

    .line 1011
    :cond_2e
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    .line 1016
    :cond_30
    const-string v0, "AlertsDisabled"

    invoke-virtual {v3, v0, v2}, Lt/s;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1017
    if-ne v0, v1, :cond_3a

    .line 1018
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    .line 1023
    :cond_3a
    const-string v0, "AlertsMuted"

    invoke-virtual {v3, v0, v2}, Lt/s;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1024
    if-ne v0, v1, :cond_44

    .line 1025
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    .line 1027
    :cond_44
    return-void

    :cond_45
    move v0, v2

    .line 997
    goto :goto_15
.end method

.method private c(Lo/j;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 724
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/j;I)Li/U;

    move-result-object v0

    .line 725
    if-nez v0, :cond_8

    .line 741
    :cond_7
    :goto_7
    return-void

    .line 728
    :cond_8
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    invoke-interface {v1, v0, v6}, Li/S;->a(Li/U;Li/T;)V

    .line 729
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->x:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-virtual {p1}, Lo/j;->a()I

    move-result v0

    if-nez v0, :cond_7

    .line 732
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Lo/I;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lo/I;->f()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 735
    invoke-virtual {p1}, Lo/j;->d()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, Lo/I;->a()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->e()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p1}, Lo/j;->c()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 738
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->q:Lcom/google/android/maps/driveabout/app/aH;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/maps/driveabout/app/aH;->a(II)Li/U;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    invoke-interface {v1, v0, v6}, Li/S;->a(Li/U;Li/T;)V

    goto :goto_7
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/a;)Li/S;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    return-object v0
.end method

.method private d(I)V
    .registers 5
    .parameter

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lo/O;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v1

    .line 1032
    const-string v2, "VoiceGuidanceEnabled"

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lt/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lt/s;

    .line 1035
    const-string v0, "Volume"

    invoke-virtual {v1, v0}, Lt/s;->a(Ljava/lang/String;)Lt/s;

    .line 1036
    const-string v0, "AlertMode"

    invoke-virtual {v1, v0}, Lt/s;->a(Ljava/lang/String;)Lt/s;

    .line 1037
    const-string v0, "VolumeMode"

    invoke-virtual {v1, v0}, Lt/s;->a(Ljava/lang/String;)Lt/s;

    .line 1038
    const-string v0, "AlertsDisabled"

    invoke-virtual {v1, v0}, Lt/s;->a(Ljava/lang/String;)Lt/s;

    .line 1039
    const-string v0, "AlertsMuted"

    invoke-virtual {v1, v0}, Lt/s;->a(Ljava/lang/String;)Lt/s;

    .line 1040
    return-void

    .line 1032
    :cond_32
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/a;)Li/S;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->f:Li/S;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/app/a;)Li/S;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->g:Li/S;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/app/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->o:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/app/a;)Li/c;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->h:Li/c;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/maps/driveabout/app/a;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/a;->o()V

    return-void
.end method

.method private declared-synchronized o()V
    .registers 3

    .prologue
    .line 844
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    .line 847
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Lcom/google/android/maps/driveabout/app/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->l:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 848
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Lcom/google/android/maps/driveabout/app/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->b()V

    .line 850
    :cond_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->l:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_2a

    .line 853
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->l:Lcom/google/android/maps/driveabout/app/g;

    .line 854
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->l:Lcom/google/android/maps/driveabout/app/g;

    .line 855
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/g;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2e

    .line 859
    :goto_28
    monitor-exit p0

    return-void

    .line 857
    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2e

    goto :goto_28

    .line 844
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(Lo/j;I)Li/U;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 927
    const/4 v0, 0x0

    .line 928
    invoke-virtual {p1}, Lo/j;->i()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 929
    invoke-virtual {p1}, Lo/j;->h()Ljava/lang/CharSequence;

    move-result-object v1

    .line 930
    invoke-virtual {p1}, Lo/j;->j()Li/l;

    move-result-object v2

    .line 931
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1b

    .line 932
    invoke-static {p1, v1, v2}, Li/U;->a(Lo/j;Ljava/lang/CharSequence;Li/l;)Li/U;

    move-result-object v0

    .line 947
    :cond_1b
    :goto_1b
    return-object v0

    .line 934
    :cond_1c
    invoke-virtual {p1}, Lo/j;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    .line 937
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v1

    .line 938
    invoke-virtual {v1}, Lo/I;->j()Lo/I;

    move-result-object v1

    .line 939
    if-eqz v1, :cond_1b

    .line 940
    invoke-virtual {v1}, Lo/I;->e()I

    move-result v0

    .line 941
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->q:Lcom/google/android/maps/driveabout/app/aH;

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/aH;->a(Lo/j;II)Li/U;

    move-result-object v0

    goto :goto_1b

    .line 945
    :cond_38
    invoke-virtual {p1}, Lo/j;->a()I

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x1

    :goto_3f
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/j;Z)Li/U;

    move-result-object v0

    goto :goto_1b

    :cond_44
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 401
    if-nez p1, :cond_40

    .line 402
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Li/ab;

    invoke-virtual {v0}, Li/ab;->a()Li/aa;

    move-result-object v0

    .line 403
    new-instance v1, Li/d;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/a;->v:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v0}, Li/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Li/aa;)V

    .line 405
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    .line 408
    invoke-static {}, Lac/h;->b()Lac/p;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Li/D;->a(Lac/p;Landroid/content/Context;Li/aa;)Li/D;

    move-result-object v1

    .line 411
    new-instance v2, Li/t;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Li/t;-><init>(Landroid/content/Context;Li/B;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->f:Li/S;

    .line 417
    const-string v1, "com.google.android.apps.networktts"

    invoke-interface {v0}, Li/aa;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3f

    .line 420
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->n()V

    .line 432
    :cond_3f
    :goto_3f
    return-void

    .line 422
    :cond_40
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3f

    .line 424
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    .line 425
    new-instance v1, Lcom/google/android/maps/driveabout/app/b;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/driveabout/app/b;-><init>(Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Ljava/lang/Runnable;)V

    goto :goto_3f
.end method

.method public a(Lcom/google/android/maps/driveabout/app/d;)V
    .registers 6
    .parameter

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 985
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/app/d;->a()V

    .line 993
    :goto_9
    return-void

    .line 988
    :cond_a
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Li/r;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Li/r;-><init>(I)V

    invoke-static {v0, v1, v2}, Li/U;->a(ILjava/lang/CharSequence;Li/l;)Li/U;

    move-result-object v0

    .line 992
    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/app/a;->a(Li/U;Lcom/google/android/maps/driveabout/app/d;)V

    goto :goto_9
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 441
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->p:Z

    .line 452
    :goto_9
    return-void

    .line 444
    :cond_a
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->p:Z

    goto :goto_9
.end method

.method public a(Lo/j;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/j;)V

    .line 616
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    if-nez v0, :cond_45

    .line 622
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 623
    if-eqz v0, :cond_3a

    .line 624
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    .line 625
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    .line 626
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, p2, v3

    .line 627
    int-to-float v4, v3

    neg-float v1, v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_3a

    int-to-float v1, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3a

    .line 628
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 631
    :cond_3a
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/a;->c(Lo/j;II)Li/U;

    move-result-object v0

    .line 632
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Li/U;Lcom/google/android/maps/driveabout/app/d;)V

    .line 633
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/a;->a(Li/U;)V

    .line 635
    :cond_45
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/a;->o:Z

    .line 499
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    return v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 487
    iput p1, p0, Lcom/google/android/maps/driveabout/app/a;->s:I

    .line 488
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/a;->c(I)V

    .line 489
    return-void
.end method

.method public b(Lo/j;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->e()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    if-eqz v0, :cond_26

    .line 660
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/a;->c(Lo/j;II)Li/U;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_1f

    .line 664
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->r:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Li/S;->a(Li/U;Li/T;)V

    .line 668
    :cond_1f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->w:Z

    if-eqz v0, :cond_26

    .line 669
    invoke-direct {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/a;->b(Lo/j;I)V

    .line 672
    :cond_26
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    .line 509
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    return v0
.end method

.method public c(Lo/j;II)Li/U;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 757
    const/4 v0, 0x0

    .line 758
    invoke-virtual {p1}, Lo/j;->a()I

    move-result v1

    if-ne v1, v6, :cond_61

    .line 759
    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/j;I)Li/U;

    move-result-object v1

    .line 760
    if-eqz v1, :cond_8a

    invoke-virtual {p1}, Lo/j;->f()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {p1}, Lo/j;->g()Lo/j;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 763
    invoke-virtual {p1}, Lo/j;->g()Lo/j;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/j;Z)Li/U;

    move-result-object v2

    .line 764
    if-eqz v2, :cond_88

    .line 765
    invoke-virtual {v1}, Li/U;->a()Ljava/lang/String;

    move-result-object v0

    .line 766
    invoke-virtual {p1}, Lo/j;->i()Z

    move-result v3

    if-nez v3, :cond_43

    .line 767
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const v4, 0x7f0d009e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2}, Li/U;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 773
    :cond_43
    invoke-virtual {v1}, Li/U;->b()Li/l;

    move-result-object v1

    .line 774
    new-instance v3, Li/r;

    invoke-direct {v3, v7}, Li/r;-><init>(I)V

    invoke-virtual {v2}, Li/U;->b()Li/l;

    move-result-object v2

    invoke-static {v3, v2}, Li/l;->a(Li/l;Li/l;)Li/l;

    move-result-object v2

    .line 777
    invoke-static {v2}, Li/l;->a(Li/l;)Li/l;

    move-result-object v2

    invoke-static {v1, v2}, Li/l;->a(Li/l;Li/l;)Li/l;

    move-result-object v1

    .line 779
    invoke-static {p1, v0, v1}, Li/U;->a(Lo/j;Ljava/lang/CharSequence;Li/l;)Li/U;

    move-result-object v0

    .line 793
    :cond_60
    :goto_60
    return-object v0

    .line 782
    :cond_61
    invoke-virtual {p1}, Lo/j;->a()I

    move-result v1

    if-nez v1, :cond_7d

    if-ltz p2, :cond_7d

    .line 784
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->q:Lcom/google/android/maps/driveabout/app/aH;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/maps/driveabout/app/aH;->a(II)Li/U;

    move-result-object v1

    .line 786
    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/j;I)Li/U;

    move-result-object v2

    .line 787
    if-eqz v2, :cond_60

    .line 788
    new-instance v0, Li/V;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v2}, Li/V;-><init>(Landroid/content/Context;Li/U;Li/U;)V

    goto :goto_60

    .line 790
    :cond_7d
    invoke-virtual {p1}, Lo/j;->a()I

    move-result v1

    if-ne v1, v5, :cond_60

    .line 791
    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/j;I)Li/U;

    move-result-object v0

    goto :goto_60

    :cond_88
    move-object v0, v1

    goto :goto_60

    :cond_8a
    move-object v0, v1

    goto :goto_60
.end method

.method public c(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 531
    if-eqz p1, :cond_29

    .line 532
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 533
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_18

    .line 534
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 536
    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_21

    .line 537
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/g;->c()V

    .line 544
    :cond_21
    :goto_21
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    .line 545
    iget v0, p0, Lcom/google/android/maps/driveabout/app/a;->s:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/a;->d(I)V

    .line 546
    return-void

    .line 540
    :cond_29
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_21

    .line 541
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/g;->b()V

    goto :goto_21
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->e()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->d()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public d()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 572
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 574
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 577
    if-eq v0, v2, :cond_1b

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->e()Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_1b
    move v0, v2

    .line 580
    :goto_1c
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    if-eqz v3, :cond_2d

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :goto_2a
    return v2

    :cond_2b
    move v0, v1

    .line 577
    goto :goto_1c

    :cond_2d
    move v2, v1

    .line 580
    goto :goto_2a
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 607
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public f()V
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 748
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    if-eqz v0, :cond_e

    .line 749
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    invoke-interface {v0}, Li/S;->a()V

    .line 751
    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 752
    return-void
.end method

.method public g()V
    .registers 5

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 959
    :goto_6
    return-void

    .line 954
    :cond_7
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const v2, 0x7f0d0013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Li/r;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Li/r;-><init>(I)V

    invoke-static {v0, v1, v2}, Li/U;->a(ILjava/lang/CharSequence;Li/l;)Li/U;

    move-result-object v0

    .line 958
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Li/U;Lcom/google/android/maps/driveabout/app/d;)V

    goto :goto_6
.end method

.method public h()V
    .registers 5

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 970
    :goto_6
    return-void

    .line 965
    :cond_7
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Li/r;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Li/r;-><init>(I)V

    invoke-static {v0, v1, v2}, Li/U;->a(ILjava/lang/CharSequence;Li/l;)Li/U;

    move-result-object v0

    .line 969
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Li/U;Lcom/google/android/maps/driveabout/app/d;)V

    goto :goto_6
.end method

.method public i()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 973
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 981
    :goto_7
    return-void

    .line 976
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Li/r;

    invoke-direct {v1, v2}, Li/r;-><init>(I)V

    invoke-static {v2, v0, v1}, Li/U;->a(ILjava/lang/CharSequence;Li/l;)Li/U;

    move-result-object v0

    .line 980
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Li/U;Lcom/google/android/maps/driveabout/app/d;)V

    goto :goto_7
.end method

.method public j()Li/U;
    .registers 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->t:Li/U;

    return-object v0
.end method

.method public k()J
    .registers 3

    .prologue
    .line 1057
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/app/a;->u:J

    return-wide v0
.end method

.method public l()V
    .registers 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    if-eqz v0, :cond_9

    .line 1065
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    invoke-interface {v0}, Li/S;->b()V

    .line 1067
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->h:Li/c;

    invoke-interface {v0}, Li/c;->b()V

    .line 1068
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->i:Li/c;

    invoke-interface {v0}, Li/c;->b()V

    .line 1069
    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Li/ab;

    invoke-virtual {v0}, Li/ab;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()V
    .registers 3

    .prologue
    .line 1098
    new-instance v0, Li/M;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    invoke-direct {v0, v1}, Li/M;-><init>(Li/S;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Li/S;

    .line 1099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->w:Z

    .line 1100
    return-void
.end method
