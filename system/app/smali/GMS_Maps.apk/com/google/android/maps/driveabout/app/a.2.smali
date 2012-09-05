.class public Lcom/google/android/maps/driveabout/app/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/maps/driveabout/app/NavigationService;

.field private final c:Lcom/google/android/maps/driveabout/app/j;

.field private d:Lo/P;

.field private final e:Lo/P;

.field private final f:Lo/P;

.field private final g:Lo/c;

.field private final h:Lo/c;

.field private i:Lcom/google/android/maps/driveabout/app/g;

.field private j:Lcom/google/android/maps/driveabout/app/g;

.field private k:Lcom/google/android/maps/driveabout/app/g;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private final p:Lcom/google/android/maps/driveabout/app/aD;

.field private final q:Ljava/util/HashMap;

.field private r:I

.field private s:Lo/R;

.field private t:J

.field private u:Landroid/os/Handler;

.field private v:Z

.field private final w:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->o:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->q:Ljava/util/HashMap;

    iput v1, p0, Lcom/google/android/maps/driveabout/app/a;->r:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->w:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/a;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->u:Landroid/os/Handler;

    new-instance v0, Lo/d;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->u:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lo/d;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    new-instance v1, Lcom/google/android/maps/driveabout/app/e;

    invoke-direct {v1, p0, v3}, Lcom/google/android/maps/driveabout/app/e;-><init>(Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/b;)V

    invoke-virtual {v0, v1}, Lo/d;->a(Lo/j;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lo/B;->a(Lat/h;Landroid/content/Context;)Lo/B;

    move-result-object v0

    new-instance v1, Lo/t;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lo/t;-><init>(Landroid/content/Context;Lo/z;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->e:Lo/P;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/app/a;->f:Lo/P;

    new-instance v0, Lo/F;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/F;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->g:Lo/c;

    new-instance v0, Lo/aa;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->h:Lo/c;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/j;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Lcom/google/android/maps/driveabout/app/j;

    new-instance v0, Lcom/google/android/maps/driveabout/app/aD;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/aD;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->p:Lcom/google/android/maps/driveabout/app/aD;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/a;->r:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/a;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->u:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lu/j;Z)Lo/R;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v1

    invoke-virtual {v1}, Lu/I;->b()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_55

    if-eqz p2, :cond_3a

    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    const v1, 0x7f0b000f

    const/4 v0, 0x6

    :goto_1e
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/r;

    invoke-direct {v2, v0}, Lo/r;-><init>(I)V

    invoke-static {p1, v1, v2}, Lo/R;->a(Lu/j;Ljava/lang/CharSequence;Lo/l;)Lo/R;

    move-result-object v0

    :cond_2d
    :goto_2d
    return-object v0

    :pswitch_2e
    const v1, 0x7f0b000d

    const/16 v0, 0x9

    goto :goto_1e

    :pswitch_34
    const v1, 0x7f0b000e

    const/16 v0, 0xa

    goto :goto_1e

    :cond_3a
    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_76

    const v1, 0x7f0b0012

    const/4 v0, 0x5

    goto :goto_1e

    :pswitch_4a
    const v1, 0x7f0b0010

    const/4 v0, 0x7

    goto :goto_1e

    :pswitch_4f
    const v1, 0x7f0b0011

    const/16 v0, 0x8

    goto :goto_1e

    :cond_55
    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v1

    invoke-virtual {v1}, Lu/I;->o()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1}, Lu/j;->j()Lo/l;

    move-result-object v2

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2d

    invoke-static {p1, v1, v2}, Lo/R;->a(Lu/j;Ljava/lang/CharSequence;Lo/l;)Lo/R;

    move-result-object v0

    goto :goto_2d

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_34
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4f
    .end packed-switch
.end method

.method private a(Lcom/google/android/maps/driveabout/app/g;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/g;->a()V

    return-void
.end method

.method private a(Lo/R;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/a;->s:Lo/R;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/a;->t:J

    return-void
.end method

.method private declared-synchronized a(Lo/R;Lcom/google/android/maps/driveabout/app/d;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_a

    if-eqz p2, :cond_8

    :try_start_5
    invoke-interface {p2}, Lcom/google/android/maps/driveabout/app/d;->a()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_21

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    new-instance v1, Lcom/google/android/maps/driveabout/app/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/maps/driveabout/app/g;-><init>(Lcom/google/android/maps/driveabout/app/a;Lo/R;Lcom/google/android/maps/driveabout/app/d;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    :goto_15
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/g;->a(Lcom/google/android/maps/driveabout/app/g;)Z

    move-result v0

    if-nez v0, :cond_27

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lcom/google/android/maps/driveabout/app/d;->a()V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_21

    goto :goto_8

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->i:Lcom/google/android/maps/driveabout/app/g;

    goto :goto_15

    :cond_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/g;->e(Lcom/google/android/maps/driveabout/app/g;)Lcom/google/android/maps/driveabout/app/d;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/g;->e(Lcom/google/android/maps/driveabout/app/g;)Lcom/google/android/maps/driveabout/app/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/d;->a()V

    :cond_40
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    :goto_42
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/R;)V

    goto :goto_8

    :cond_46
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/g;)V
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_21

    goto :goto_42
.end method

.method private a(Lu/j;)V
    .registers 5

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.maps.navigation.GUIDANCE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "instructions"

    invoke-virtual {p1}, Lu/j;->h()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method static a(Landroid/content/Context;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_17

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto :goto_11

    :cond_17
    const/4 v0, 0x1

    goto :goto_11
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Lcom/google/android/maps/driveabout/app/j;

    return-object v0
.end method

.method private b(Lu/j;I)V
    .registers 7

    new-instance v1, Lcom/google/android/maps/driveabout/app/c;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/app/c;-><init>(Lu/j;)V

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/c;->a()Lu/j;

    const/4 v0, 0x0

    :goto_9
    const/16 v2, 0xa

    if-ge v0, v2, :cond_25

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/c;->a()Lu/j;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/a;->w:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-direct {p0, v2, p2}, Lcom/google/android/maps/driveabout/app/a;->c(Lu/j;I)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_25
    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/a;)Lo/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->h:Lo/c;

    return-object v0
.end method

.method private c(I)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lu/O;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;)Lz/t;

    move-result-object v3

    const-string v0, "VoiceGuidanceEnabled"

    invoke-virtual {v3, v0, v1}, Lz/t;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_45

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    const-string v0, "AlertMode"

    invoke-virtual {v3, v0, v1}, Lz/t;->a(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_23

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    :cond_23
    const-string v0, "VolumeMode"

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Lz/t;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2e

    if-ne v0, v1, :cond_30

    :cond_2e
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    :cond_30
    const-string v0, "AlertsDisabled"

    invoke-virtual {v3, v0, v2}, Lz/t;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3a

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    :cond_3a
    const-string v0, "AlertsMuted"

    invoke-virtual {v3, v0, v2}, Lz/t;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_44

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    :cond_44
    return-void

    :cond_45
    move v0, v2

    goto :goto_15
.end method

.method private c(Lu/j;I)V
    .registers 10

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/a;->a(Lu/j;I)Lo/R;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    invoke-interface {v1, v0, v6}, Lo/P;->a(Lo/R;Lo/Q;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->w:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lu/j;->a()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lu/I;->f()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lu/j;->d()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, Lu/I;->a()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->e()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p1}, Lu/j;->c()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->p:Lcom/google/android/maps/driveabout/app/aD;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/maps/driveabout/app/aD;->a(II)Lo/R;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    invoke-interface {v1, v0, v6}, Lo/P;->a(Lo/R;Lo/Q;)V

    goto :goto_7
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/a;)Lo/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    return-object v0
.end method

.method private d(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lu/O;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;)Lz/t;

    move-result-object v1

    const-string v2, "VoiceGuidanceEnabled"

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lz/t;->a(Ljava/lang/String;Ljava/lang/Object;)Lz/t;

    const-string v0, "Volume"

    invoke-virtual {v1, v0}, Lz/t;->a(Ljava/lang/String;)Lz/t;

    const-string v0, "AlertMode"

    invoke-virtual {v1, v0}, Lz/t;->a(Ljava/lang/String;)Lz/t;

    const-string v0, "VolumeMode"

    invoke-virtual {v1, v0}, Lz/t;->a(Ljava/lang/String;)Lz/t;

    const-string v0, "AlertsDisabled"

    invoke-virtual {v1, v0}, Lz/t;->a(Ljava/lang/String;)Lz/t;

    const-string v0, "AlertsMuted"

    invoke-virtual {v1, v0}, Lz/t;->a(Ljava/lang/String;)Lz/t;

    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->o:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/a;)Lo/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->f:Lo/P;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/app/a;)Lo/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Lo/P;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/app/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/app/a;)Lo/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->g:Lo/c;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/maps/driveabout/app/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/a;->n()V

    return-void
.end method

.method private declared-synchronized n()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->i:Lcom/google/android/maps/driveabout/app/g;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Lcom/google/android/maps/driveabout/app/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Lcom/google/android/maps/driveabout/app/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->b()V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->k:Lcom/google/android/maps/driveabout/app/g;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/g;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2e

    :goto_28
    monitor-exit p0

    return-void

    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2e

    goto :goto_28

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(Lu/j;I)Lo/R;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lu/j;->i()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Lu/j;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lu/j;->j()Lo/l;

    move-result-object v2

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1b

    invoke-static {p1, v1, v2}, Lo/R;->a(Lu/j;Ljava/lang/CharSequence;Lo/l;)Lo/R;

    move-result-object v0

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    invoke-virtual {p1}, Lu/j;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v1

    invoke-virtual {v1}, Lu/I;->j()Lu/I;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lu/I;->e()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->p:Lcom/google/android/maps/driveabout/app/aD;

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/aD;->a(Lu/j;II)Lo/R;

    move-result-object v0

    goto :goto_1b

    :cond_38
    invoke-virtual {p1}, Lu/j;->a()I

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x1

    :goto_3f
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/a;->a(Lu/j;Z)Lo/R;

    move-result-object v0

    goto :goto_1b

    :cond_44
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public a(I)V
    .registers 5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    invoke-interface {v0}, Lo/P;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    :cond_12
    if-ne p1, v2, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/b;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/driveabout/app/b;-><init>(Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(Ljava/lang/Runnable;)V

    :cond_22
    if-nez p1, :cond_43

    const-string v0, "com.google.android.apps.networktts"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    invoke-interface {v1}, Lo/P;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_43

    :cond_38
    new-instance v0, Lo/J;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    invoke-direct {v0, v1}, Lo/J;-><init>(Lo/P;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/a;->v:Z

    :cond_43
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/d;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/app/d;->a()V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/r;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lo/r;-><init>(I)V

    invoke-static {v0, v1, v2}, Lo/R;->a(ILjava/lang/CharSequence;Lo/l;)Lo/R;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/R;Lcom/google/android/maps/driveabout/app/d;)V

    goto :goto_9
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->o:Z

    :goto_9
    return-void

    :cond_a
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->o:Z

    goto :goto_9
.end method

.method public a(Lu/j;II)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/a;->a(Lu/j;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v4, v3

    neg-float v1, v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_3a

    int-to-float v1, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_3a
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/a;->c(Lu/j;II)Lo/R;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/R;Lcom/google/android/maps/driveabout/app/d;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/R;)V

    :cond_45
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/a;->n:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->l:Z

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/a;->r:I

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/a;->c(I)V

    return-void
.end method

.method public b(Lu/j;II)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->e()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    if-eqz v0, :cond_26

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/a;->c(Lu/j;II)Lo/R;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->q:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lo/P;->a(Lo/R;Lo/Q;)V

    :cond_1f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->v:Z

    if-eqz v0, :cond_26

    invoke-direct {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/a;->b(Lu/j;I)V

    :cond_26
    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/a;->l:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    return v0
.end method

.method public c(Lu/j;II)Lo/R;
    .registers 12

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lu/j;->a()I

    move-result v1

    if-ne v1, v6, :cond_61

    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/a;->a(Lu/j;I)Lo/R;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-virtual {p1}, Lu/j;->f()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {p1}, Lu/j;->g()Lu/j;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {p1}, Lu/j;->g()Lu/j;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/google/android/maps/driveabout/app/a;->a(Lu/j;Z)Lo/R;

    move-result-object v2

    if-eqz v2, :cond_88

    invoke-virtual {v1}, Lo/R;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lu/j;->i()Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const v4, 0x7f0b0090

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2}, Lo/R;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_43
    invoke-virtual {v1}, Lo/R;->b()Lo/l;

    move-result-object v1

    new-instance v3, Lo/r;

    invoke-direct {v3, v7}, Lo/r;-><init>(I)V

    invoke-virtual {v2}, Lo/R;->b()Lo/l;

    move-result-object v2

    invoke-static {v3, v2}, Lo/l;->a(Lo/l;Lo/l;)Lo/l;

    move-result-object v2

    invoke-static {v2}, Lo/l;->a(Lo/l;)Lo/l;

    move-result-object v2

    invoke-static {v1, v2}, Lo/l;->a(Lo/l;Lo/l;)Lo/l;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lo/R;->a(Lu/j;Ljava/lang/CharSequence;Lo/l;)Lo/R;

    move-result-object v0

    :cond_60
    :goto_60
    return-object v0

    :cond_61
    invoke-virtual {p1}, Lu/j;->a()I

    move-result v1

    if-nez v1, :cond_7d

    if-ltz p2, :cond_7d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->p:Lcom/google/android/maps/driveabout/app/aD;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/maps/driveabout/app/aD;->a(II)Lo/R;

    move-result-object v1

    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/a;->a(Lu/j;I)Lo/R;

    move-result-object v2

    if-eqz v2, :cond_60

    new-instance v0, Lo/S;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v2}, Lo/S;-><init>(Landroid/content/Context;Lo/R;Lo/R;)V

    goto :goto_60

    :cond_7d
    invoke-virtual {p1}, Lu/j;->a()I

    move-result v1

    if-ne v1, v5, :cond_60

    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/app/a;->a(Lu/j;I)Lo/R;

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

    const/4 v3, 0x3

    if-eqz p1, :cond_29

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/g;->c()V

    :cond_21
    :goto_21
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/a;->m:Z

    iget v0, p0, Lcom/google/android/maps/driveabout/app/a;->r:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/a;->d(I)V

    return-void

    :cond_29
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:Lcom/google/android/maps/driveabout/app/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/g;->b()V

    goto :goto_21
.end method

.method public c()Z
    .registers 2

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

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    if-eq v0, v2, :cond_1b

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->e()Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_1b
    move v0, v2

    :goto_1c
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/app/a;->l:Z

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

    goto :goto_1c

    :cond_2d
    move v2, v1

    goto :goto_2a
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

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

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    invoke-interface {v0}, Lo/P;->a()V

    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public g()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/r;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lo/r;-><init>(I)V

    invoke-static {v0, v1, v2}, Lo/R;->a(ILjava/lang/CharSequence;Lo/l;)Lo/R;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/R;Lcom/google/android/maps/driveabout/app/d;)V

    goto :goto_6
.end method

.method public h()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/r;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lo/r;-><init>(I)V

    invoke-static {v0, v1, v2}, Lo/R;->a(ILjava/lang/CharSequence;Lo/l;)Lo/R;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/R;Lcom/google/android/maps/driveabout/app/d;)V

    goto :goto_6
.end method

.method public i()V
    .registers 4

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/content/Context;

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo/r;

    invoke-direct {v1, v2}, Lo/r;-><init>(I)V

    invoke-static {v2, v0, v1}, Lo/R;->a(ILjava/lang/CharSequence;Lo/l;)Lo/R;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/R;Lcom/google/android/maps/driveabout/app/d;)V

    goto :goto_7
.end method

.method public j()Lo/R;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->s:Lo/R;

    return-object v0
.end method

.method public k()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/app/a;->t:J

    return-wide v0
.end method

.method public l()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    invoke-interface {v0}, Lo/P;->b()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->g:Lo/c;

    invoke-interface {v0}, Lo/c;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->h:Lo/c;

    invoke-interface {v0}, Lo/c;->b()V

    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Lo/P;

    invoke-interface {v0}, Lo/P;->c()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
