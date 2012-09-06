.class public abstract Ls/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I

.field private static final e:[Ls/q;


# instance fields
.field protected a:Ls/n;

.field private c:Ls/w;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    invoke-static {}, Ls/w;->values()[Ls/w;

    move-result-object v0

    array-length v0, v0

    sput v0, Ls/q;->b:I

    .line 116
    sget v0, Ls/q;->b:I

    new-array v0, v0, [Ls/q;

    sput-object v0, Ls/q;->e:[Ls/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1890
    return-void
.end method

.method static synthetic a(Ls/q;Ls/w;)Ls/w;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Ls/q;->c:Ls/w;

    return-object p1
.end method

.method private final a(Lcom/google/android/maps/driveabout/app/cI;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1844
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ShowDNHWarning"

    invoke-static {v0, v1, v2}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1846
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v0

    invoke-virtual {v0}, Lo/P;->g()Ljava/lang/String;

    move-result-object v0

    .line 1847
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1848
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v1

    invoke-virtual {v1}, Lm/b;->m()Ln/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/di;->a(Ljava/lang/String;Ln/s;)V

    .line 1851
    :cond_31
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->b()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d004f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1853
    invoke-interface {p1, v2}, Lcom/google/android/maps/driveabout/app/cI;->f(Z)V

    .line 1854
    return-void
.end method

.method private final a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/cS;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1863
    new-instance v0, Lcom/google/android/maps/driveabout/app/et;

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/et;-><init>(Lcom/google/android/maps/driveabout/app/cI;)V

    .line 1864
    new-instance v1, Ls/u;

    invoke-direct {v1, p0, p2}, Ls/u;-><init>(Ls/q;Lcom/google/android/maps/driveabout/app/cS;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/app/et;->a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/eC;)V

    .line 1865
    return-void
.end method

.method private a(Lo/P;I[Lo/b;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 824
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 825
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 826
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bj;->a(Lo/P;I[Lo/b;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 828
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 829
    const-string v1, "UserRequestedReroute"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 830
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 831
    return-void
.end method

.method static synthetic a(Ls/q;Lcom/google/android/maps/driveabout/app/cI;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Ls/q;->a(Lcom/google/android/maps/driveabout/app/cI;)V

    return-void
.end method

.method static synthetic a(Ls/q;Ljava/io/File;Lcom/google/android/maps/driveabout/app/cS;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ls/q;->a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/cS;)V

    return-void
.end method

.method private ai()V
    .registers 3

    .prologue
    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_19

    .line 292
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 293
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->f()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_19

    .line 295
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->invalidateOptionsMenu()V

    .line 302
    :cond_19
    :goto_19
    return-void

    .line 298
    :cond_1a
    const-string v0, "UIState"

    const-string v1, "NavigationApplicationDelegate.getInstance() should never be null."

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method private aj()V
    .registers 4

    .prologue
    .line 473
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    .line 474
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->a()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/cI;->a(ZZ)V

    .line 476
    return-void
.end method

.method private ak()V
    .registers 3

    .prologue
    .line 504
    iget v0, p0, Ls/q;->d:I

    if-lez v0, :cond_e

    .line 505
    const-string v0, "z"

    iget v1, p0, Ls/q;->d:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;I)V

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Ls/q;->d:I

    .line 508
    :cond_e
    return-void
.end method

.method private al()V
    .registers 4

    .prologue
    .line 1346
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->h()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    .line 1347
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v1

    .line 1350
    sget-object v2, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v0, v2, :cond_21

    .line 1351
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->u()V

    .line 1355
    :cond_21
    invoke-static {v1}, Lm/F;->a(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1356
    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v0, v1, :cond_3f

    .line 1357
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(Lcom/google/android/maps/driveabout/vector/D;)V

    .line 1358
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->t()V

    .line 1385
    :cond_3f
    :goto_3f
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cK;->h()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v1

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cK;->i()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->setBaseMapOverlays(Lcom/google/android/maps/driveabout/vector/D;Z)V

    .line 1387
    return-void

    .line 1360
    :cond_5d
    invoke-static {v1}, Lm/F;->a(Landroid/location/Location;)Z

    move-result v2

    if-nez v2, :cond_ab

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->r()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 1365
    invoke-virtual {v1}, Lm/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v1}, Lm/b;->g()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1366
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->u()V

    .line 1369
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->s()I

    move-result v0

    .line 1371
    const-string v1, "T"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;I)V

    .line 1376
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->K()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1377
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(Lcom/google/android/maps/driveabout/vector/D;)V

    goto :goto_3f

    .line 1380
    :cond_ab
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->K()Z

    move-result v1

    if-eqz v1, :cond_c8

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v0, v1, :cond_c8

    .line 1381
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(Lcom/google/android/maps/driveabout/vector/D;)V

    goto/16 :goto_3f

    .line 1382
    :cond_c8
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->K()Z

    move-result v1

    if-nez v1, :cond_3f

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v0, v1, :cond_3f

    .line 1383
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(Lcom/google/android/maps/driveabout/vector/D;)V

    goto/16 :goto_3f
.end method

.method private am()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1390
    invoke-virtual {p0}, Ls/q;->Y()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1391
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->c()F

    move-result v1

    .line 1392
    new-instance v2, Lm/b;

    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v3

    invoke-direct {v2, v3}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 1394
    invoke-virtual {v2, v1}, Lm/b;->setBearing(F)V

    .line 1395
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/cI;->setMyLocation(Landroid/location/Location;Z)V

    .line 1401
    :goto_2c
    invoke-virtual {p0}, Ls/q;->Z()V

    .line 1402
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setCurrentRoadName(Landroid/location/Location;)V

    .line 1403
    return-void

    .line 1397
    :cond_43
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v1

    .line 1398
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v2

    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->j()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-virtual {v1}, Lm/b;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_69

    :goto_65
    invoke-interface {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/cI;->setMyLocation(Landroid/location/Location;Z)V

    goto :goto_2c

    :cond_69
    const/4 v0, 0x0

    goto :goto_65
.end method

.method private an()I
    .registers 2

    .prologue
    .line 1434
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->e()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1435
    const/4 v0, 0x2

    .line 1437
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Ls/q;->f()I

    move-result v0

    goto :goto_d
.end method

.method private ao()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1464
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1465
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->E()V

    .line 1483
    :goto_16
    invoke-virtual {p0}, Ls/q;->x()V

    .line 1484
    return-void

    .line 1466
    :cond_1a
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->x()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1467
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->b()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d008b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/String;Z)V

    goto :goto_16

    .line 1469
    :cond_3d
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1471
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 1472
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-virtual {v1}, Lo/x;->m()Lo/P;

    move-result-object v1

    .line 1473
    if-eqz v1, :cond_7e

    .line 1474
    invoke-virtual {v1}, Lo/P;->c()Ln/s;

    move-result-object v1

    .line 1475
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lm/b;->b(Ln/s;)F

    move-result v1

    const/high16 v2, 0x4270

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7e

    const/4 v0, 0x1

    .line 1479
    :cond_7e
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cI;->h(Z)V

    goto :goto_16

    .line 1481
    :cond_88
    invoke-virtual {p0}, Ls/q;->u()V

    goto :goto_16
.end method

.method private ap()V
    .registers 1

    .prologue
    .line 1573
    invoke-virtual {p0}, Ls/q;->ab()V

    .line 1574
    return-void
.end method

.method private aq()V
    .registers 3

    .prologue
    .line 1620
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->d()I

    move-result v0

    .line 1621
    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 1622
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cI;->a(I)V

    .line 1626
    :goto_16
    return-void

    .line 1624
    :cond_17
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->j()V

    goto :goto_16
.end method

.method private ar()V
    .registers 5

    .prologue
    .line 1632
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->p()I

    move-result v1

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v2

    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cI;->a(IIZ)V

    .line 1636
    return-void
.end method

.method private as()V
    .registers 3

    .prologue
    .line 1641
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v0

    if-eqz v0, :cond_17

    .line 1642
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setTrafficMode(I)V

    .line 1648
    :goto_16
    return-void

    .line 1643
    :cond_17
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1644
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setTrafficMode(I)V

    goto :goto_16

    .line 1646
    :cond_2e
    invoke-virtual {p0}, Ls/q;->v()V

    goto :goto_16
.end method

.method private at()V
    .registers 4

    .prologue
    .line 1666
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->j()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1667
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setStatusBarContent(Ljava/lang/CharSequence;)V

    .line 1677
    :goto_22
    return-void

    .line 1669
    :cond_23
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->v()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1670
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setStatusBarContent(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 1673
    :cond_46
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const-string v1, "__route_status"

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setStatusBarContent(Ljava/lang/CharSequence;)V

    .line 1675
    invoke-virtual {p0}, Ls/q;->w()V

    goto :goto_22
.end method

.method private au()Z
    .registers 3

    .prologue
    .line 1696
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->h()I

    move-result v0

    const/16 v1, 0x1324

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private av()V
    .registers 2

    .prologue
    .line 1704
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->E()V

    .line 1705
    return-void
.end method

.method private final aw()V
    .registers 2

    .prologue
    .line 1711
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->j()V

    .line 1712
    return-void
.end method

.method private j(Z)V
    .registers 6
    .parameter

    .prologue
    .line 1420
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-direct {p0}, Ls/q;->an()I

    move-result v1

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cK;->h()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v2

    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/ci;->a(ILcom/google/android/maps/driveabout/vector/D;I)V

    .line 1423
    invoke-virtual {p0, p1}, Ls/q;->a(Z)V

    .line 1424
    return-void
.end method


# virtual methods
.method public A()Z
    .registers 2

    .prologue
    .line 1737
    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public final C()Ls/w;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Ls/q;->c:Ls/w;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Ls/q;->c:Ls/w;

    invoke-virtual {v0}, Ls/w;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()V
    .registers 2

    .prologue
    .line 269
    invoke-direct {p0}, Ls/q;->aw()V

    .line 270
    invoke-direct {p0}, Ls/q;->aj()V

    .line 271
    invoke-direct {p0}, Ls/q;->al()V

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls/q;->j(Z)V

    .line 273
    invoke-direct {p0}, Ls/q;->ao()V

    .line 274
    invoke-direct {p0}, Ls/q;->ai()V

    .line 275
    invoke-direct {p0}, Ls/q;->at()V

    .line 276
    invoke-direct {p0}, Ls/q;->ap()V

    .line 277
    invoke-direct {p0}, Ls/q;->aq()V

    .line 278
    invoke-direct {p0}, Ls/q;->ar()V

    .line 279
    invoke-direct {p0}, Ls/q;->as()V

    .line 280
    invoke-virtual {p0}, Ls/q;->m()V

    .line 281
    return-void
.end method

.method public F()V
    .registers 2

    .prologue
    .line 311
    invoke-direct {p0}, Ls/q;->am()V

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls/q;->j(Z)V

    .line 313
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 314
    invoke-direct {p0}, Ls/q;->ao()V

    .line 316
    :cond_16
    return-void
.end method

.method public final G()V
    .registers 4

    .prologue
    .line 323
    invoke-virtual {p0}, Ls/q;->Y()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 324
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->c()F

    move-result v0

    .line 325
    new-instance v1, Lm/b;

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 327
    invoke-virtual {v1, v0}, Lm/b;->setBearing(F)V

    .line 328
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->setMyLocation(Landroid/location/Location;Z)V

    .line 330
    :cond_2c
    return-void
.end method

.method protected H()Z
    .registers 2

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public final I()V
    .registers 4

    .prologue
    .line 514
    invoke-direct {p0}, Ls/q;->aw()V

    .line 515
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->e()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    .line 516
    :goto_10
    new-instance v1, Lk/D;

    const-string v2, "compassButton"

    invoke-direct {v1, v2, v0}, Lk/D;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1}, LA/f;->b(LA/j;)V

    .line 518
    if-eqz v0, :cond_2a

    const-string v0, "3"

    :goto_1e
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Ls/q;->g()V

    .line 523
    invoke-direct {p0}, Ls/q;->av()V

    .line 524
    return-void

    .line 515
    :cond_28
    const/4 v0, 0x0

    goto :goto_10

    .line 518
    :cond_2a
    const-string v0, "2"

    goto :goto_1e
.end method

.method public final J()V
    .registers 3

    .prologue
    .line 574
    invoke-direct {p0}, Ls/q;->aw()V

    .line 575
    new-instance v0, Lk/C;

    const-string v1, "zoomOut"

    invoke-direct {v0, v1}, Lk/C;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 577
    iget v0, p0, Ls/q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls/q;->d:I

    .line 579
    invoke-virtual {p0}, Ls/q;->i()V

    .line 580
    return-void
.end method

.method public final K()V
    .registers 3

    .prologue
    .line 586
    invoke-direct {p0}, Ls/q;->aw()V

    .line 587
    new-instance v0, Lk/C;

    const-string v1, "zoomIn"

    invoke-direct {v0, v1}, Lk/C;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 589
    iget v0, p0, Ls/q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls/q;->d:I

    .line 591
    invoke-virtual {p0}, Ls/q;->h()V

    .line 592
    return-void
.end method

.method public final L()Z
    .registers 3

    .prologue
    .line 600
    invoke-direct {p0}, Ls/q;->aw()V

    .line 601
    new-instance v0, Lk/C;

    const-string v1, "back"

    invoke-direct {v0, v1}, Lk/C;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 603
    invoke-virtual {p0}, Ls/q;->j()Z

    move-result v0

    return v0
.end method

.method public final M()V
    .registers 4

    .prologue
    .line 610
    invoke-direct {p0}, Ls/q;->aw()V

    .line 611
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 620
    :cond_1b
    :goto_1b
    return-void

    .line 615
    :cond_1c
    new-instance v0, Lk/C;

    const-string v1, "routeOverview"

    invoke-direct {v0, v1}, Lk/C;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 617
    const-string v0, "r"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->f:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    goto :goto_1b
.end method

.method public final N()V
    .registers 4

    .prologue
    .line 645
    invoke-direct {p0}, Ls/q;->aw()V

    .line 646
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 654
    :cond_1b
    :goto_1b
    return-void

    .line 650
    :cond_1c
    new-instance v0, Lk/C;

    const-string v1, "viewList"

    invoke-direct {v0, v1}, Lk/C;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 652
    const-string v0, "l"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->g:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    goto :goto_1b
.end method

.method public final O()V
    .registers 3

    .prologue
    .line 713
    invoke-direct {p0}, Ls/q;->aw()V

    .line 714
    new-instance v0, Lk/C;

    const-string v1, "backToLocation"

    invoke-direct {v0, v1}, Lk/C;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 716
    const-string v0, "n"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Ls/q;->k()V

    .line 719
    return-void
.end method

.method public final P()V
    .registers 4

    .prologue
    .line 765
    invoke-direct {p0}, Ls/q;->aw()V

    .line 768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 770
    const-string v1, "TravelMode"

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 772
    const-string v1, "ForceNewDestination"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 773
    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 774
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 775
    return-void
.end method

.method public final Q()V
    .registers 2

    .prologue
    .line 837
    invoke-direct {p0}, Ls/q;->aw()V

    .line 838
    const-string v0, "+"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Ls/q;->r()V

    .line 841
    invoke-direct {p0}, Ls/q;->av()V

    .line 842
    return-void
.end method

.method public final R()V
    .registers 2

    .prologue
    .line 849
    invoke-direct {p0}, Ls/q;->aw()V

    .line 850
    const-string v0, "-"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Ls/q;->X()V

    .line 853
    invoke-direct {p0}, Ls/q;->av()V

    .line 855
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 856
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->g()V

    .line 858
    :cond_27
    return-void
.end method

.method public final S()V
    .registers 2

    .prologue
    .line 865
    invoke-direct {p0}, Ls/q;->aw()V

    .line 867
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 868
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->i()V

    .line 870
    :cond_1c
    return-void
.end method

.method T()Z
    .registers 2

    .prologue
    .line 913
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->j()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->g()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-nez v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public final U()V
    .registers 1

    .prologue
    .line 980
    invoke-direct {p0}, Ls/q;->aw()V

    .line 981
    invoke-virtual {p0}, Ls/q;->l()V

    .line 982
    invoke-direct {p0}, Ls/q;->av()V

    .line 983
    return-void
.end method

.method public final V()V
    .registers 1

    .prologue
    .line 1069
    invoke-direct {p0}, Ls/q;->aw()V

    .line 1070
    invoke-virtual {p0}, Ls/q;->t()V

    .line 1071
    invoke-direct {p0}, Ls/q;->av()V

    .line 1072
    return-void
.end method

.method public W()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1080
    invoke-direct {p0}, Ls/q;->aw()V

    .line 1081
    const-string v0, "."

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 1083
    const v0, 0x7f0d0012

    .line 1084
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1085
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v1

    invoke-virtual {v1}, Lo/I;->c()I

    move-result v1

    if-ne v1, v3, :cond_59

    .line 1086
    const v0, 0x7f0d0010

    .line 1091
    :cond_2b
    :goto_2b
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/String;I)V

    .line 1094
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->i(Z)V

    .line 1095
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ls/q;->a(Lo/I;)V

    .line 1096
    invoke-direct {p0}, Ls/q;->ao()V

    .line 1097
    invoke-direct {p0}, Ls/q;->at()V

    .line 1099
    invoke-virtual {p0}, Ls/q;->n()V

    .line 1101
    invoke-static {v3}, Lcom/google/android/maps/driveabout/app/dh;->b(Z)V

    .line 1102
    return-void

    .line 1087
    :cond_59
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v1

    invoke-virtual {v1}, Lo/I;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    .line 1088
    const v0, 0x7f0d0011

    goto :goto_2b
.end method

.method protected X()V
    .registers 3

    .prologue
    .line 1258
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->j(Z)V

    .line 1259
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1260
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->v()V

    .line 1262
    :cond_1f
    return-void
.end method

.method protected Y()Z
    .registers 3

    .prologue
    .line 1411
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->d()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method protected Z()V
    .registers 1

    .prologue
    .line 1417
    return-void
.end method

.method public a()V
    .registers 2

    .prologue
    .line 224
    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Ls/q;->b()V

    .line 226
    return-void
.end method

.method protected a(FF)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1178
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->i:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 1179
    return-void
.end method

.method protected a(FFF)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1192
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->i:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 1193
    return-void
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 1115
    invoke-direct {p0}, Ls/q;->aw()V

    .line 1116
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v1

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->a(IIZ)V

    .line 1119
    invoke-virtual {p0, p1}, Ls/q;->b(I)V

    .line 1120
    return-void
.end method

.method public final a(IIFIIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/ci;->a(IIF)V

    .line 336
    invoke-virtual {v0, p7}, Lcom/google/android/maps/driveabout/app/ci;->a(I)V

    .line 337
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls/q;->j(Z)V

    .line 338
    return-void
.end method

.method public final a(LA/f;)V
    .registers 6
    .parameter

    .prologue
    .line 1798
    invoke-direct {p0}, Ls/q;->aw()V

    .line 1799
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->n()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1823
    :goto_f
    return-void

    .line 1802
    :cond_10
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->d(Z)V

    .line 1805
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "da_voice-rmi.3gp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1806
    new-instance v1, Lcom/google/android/maps/driveabout/app/cS;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/app/cS;-><init>(Ljava/io/File;)V

    .line 1807
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cS;->a(Lcom/google/android/maps/driveabout/app/aN;Lcom/google/android/maps/driveabout/app/cK;)V

    .line 1808
    if-eqz p1, :cond_4a

    .line 1809
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/app/cS;->a(LA/f;Lcom/google/android/maps/driveabout/app/cI;)V

    .line 1811
    :cond_4a
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1812
    invoke-direct {p0, v0, v1}, Ls/q;->a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/cS;)V

    goto :goto_f

    .line 1814
    :cond_5e
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v2

    new-instance v3, Ls/s;

    invoke-direct {v3, p0, v0, v1}, Ls/s;-><init>(Ls/q;Ljava/io/File;Lcom/google/android/maps/driveabout/app/cS;)V

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/d;)V

    goto :goto_f
.end method

.method protected a(Landroid/os/Bundle;Ln/ab;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1331
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/aN;Ln/ab;)V

    .line 1332
    return-void
.end method

.method public a(Landroid/os/Bundle;Ln/ab;Lcom/google/android/maps/driveabout/app/er;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    invoke-direct {p0}, Ls/q;->aw()V

    .line 1135
    new-instance v0, Lk/C;

    const-string v1, "search"

    invoke-direct {v0, v1}, Lk/C;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 1137
    const-string v0, "?"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p0, p1, p2}, Ls/q;->a(Landroid/os/Bundle;Ln/ab;)V

    .line 1140
    invoke-interface {p3, p1}, Lcom/google/android/maps/driveabout/app/er;->a(Landroid/os/Bundle;)V

    .line 1141
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .registers 5
    .parameter

    .prologue
    .line 373
    const v0, 0x7f100117

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;

    .line 376
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 377
    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->setIcon(I)V

    .line 378
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->setText(Ljava/lang/String;)V

    .line 384
    :goto_2f
    return-void

    .line 380
    :cond_30
    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->setIcon(I)V

    .line 381
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->setText(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method protected a(Lcom/google/android/maps/driveabout/app/bM;)V
    .registers 4
    .parameter

    .prologue
    const v1, 0x7f100116

    .line 1338
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1339
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 1343
    :goto_12
    return-void

    .line 1341
    :cond_13
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    goto :goto_12
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 5
    .parameter

    .prologue
    .line 1197
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->i:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1198
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/cI;->a(Lcom/google/android/maps/driveabout/vector/d;)V

    .line 1199
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/vector/d;)V

    .line 1200
    invoke-direct {p0}, Ls/q;->av()V

    .line 1202
    :cond_24
    return-void
.end method

.method protected a(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 1182
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->F()V

    .line 1183
    invoke-virtual {p0}, Ls/q;->aa()V

    .line 1184
    return-void
.end method

.method public final a(Ln/aL;Lcom/google/android/maps/driveabout/app/bs;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 624
    invoke-direct {p0}, Ls/q;->aw()V

    .line 625
    new-instance v0, Lk/C;

    const-string v1, "layers"

    invoke-direct {v0, v1}, Lk/C;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 627
    const-string v1, "s"

    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-nez v0, :cond_6b

    move v0, v4

    :goto_1e
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 630
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->k()Lcom/google/android/maps/driveabout/app/bw;

    move-result-object v2

    .line 631
    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/app/bw;->a(Ln/aL;)V

    .line 632
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->k:Ls/w;

    invoke-virtual {v0, v1}, Ls/n;->b(Ls/w;)Z

    move-result v5

    .line 633
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bw;->b()Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bw;->c()Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v2

    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v3

    iget-object v7, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v7}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/cK;->h()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v7

    sget-object v8, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v7, v8, :cond_6d

    :goto_5c
    iget-object v6, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v6}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/app/cK;->i()Z

    move-result v6

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/cI;->a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;IZZZLcom/google/android/maps/driveabout/app/bs;)V

    .line 639
    return-void

    :cond_6b
    move v0, v6

    .line 627
    goto :goto_1e

    :cond_6d
    move v4, v6

    .line 633
    goto :goto_5c
.end method

.method protected final a(Lo/I;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1530
    invoke-direct {p0}, Ls/q;->aw()V

    .line 1531
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/cK;->a(Lo/I;)V

    .line 1532
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    .line 1533
    if-eqz p1, :cond_23

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lo/I;->b()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2d

    .line 1536
    :cond_23
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v3, v3, v3}, Lcom/google/android/maps/driveabout/app/cI;->setTurnArrowOverlay(Lo/x;Lo/I;Lcom/google/android/maps/driveabout/vector/aE;)V

    .line 1545
    :goto_2c
    return-void

    .line 1538
    :cond_2d
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    new-instance v2, Ls/r;

    invoke-direct {v2, p0, p1}, Ls/r;-><init>(Ls/q;Lo/I;)V

    invoke-interface {v1, v0, p1, v2}, Lcom/google/android/maps/driveabout/app/cI;->setTurnArrowOverlay(Lo/x;Lo/I;Lcom/google/android/maps/driveabout/vector/aE;)V

    goto :goto_2c
.end method

.method protected a(Lo/I;Lo/I;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1276
    invoke-virtual {p0, p2}, Ls/q;->a(Lo/I;)V

    .line 1277
    return-void
.end method

.method protected a(Lo/I;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1280
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->j:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1281
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ls/q;->a(Lo/I;Z)V

    .line 1283
    :cond_14
    return-void
.end method

.method public final a(Lo/P;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 786
    invoke-direct {p0}, Ls/q;->aw()V

    .line 787
    new-instance v0, Lk/D;

    const-string v1, "newDestination"

    invoke-virtual {p1}, Lo/P;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lk/D;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 790
    if-eqz p2, :cond_18

    .line 791
    const-string v0, "d"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 794
    :cond_18
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->H()[Lo/b;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Ls/q;->a(Lo/P;I[Lo/b;)V

    .line 797
    return-void
.end method

.method protected a(Lo/g;)V
    .registers 5
    .parameter

    .prologue
    .line 1295
    invoke-virtual {p0, p1}, Ls/q;->c(Lo/g;)I

    move-result v0

    .line 1296
    if-lez v0, :cond_1a

    .line 1297
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/String;I)V

    .line 1300
    :cond_1a
    return-void
.end method

.method public final a(Lo/j;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 900
    invoke-direct {p0}, Ls/q;->aw()V

    .line 901
    invoke-direct {p0}, Ls/q;->ak()V

    .line 903
    invoke-virtual {p0, p1, p2}, Ls/q;->c(Lo/j;I)V

    .line 904
    invoke-direct {p0}, Ls/q;->av()V

    .line 905
    return-void
.end method

.method public a(Lo/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1715
    return-void
.end method

.method protected a(Lo/x;[Lo/x;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1290
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lo/x;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p1, v1}, Lcom/google/android/maps/driveabout/app/cI;->b(Lo/x;[Lo/x;)V

    .line 1291
    return-void
.end method

.method protected a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1455
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/aN;)V

    .line 1457
    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 350
    invoke-virtual {p0}, Ls/q;->H()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 558
    invoke-direct {p0}, Ls/q;->aw()V

    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ls/p;)Z
    .registers 3
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method protected final aa()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1556
    .line 1558
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v3

    .line 1559
    if-eqz v3, :cond_42

    .line 1560
    invoke-virtual {v3}, Lo/I;->k()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_3c

    move v0, v1

    .line 1561
    :goto_15
    invoke-virtual {v3}, Lo/I;->j()Lo/I;

    move-result-object v3

    if-eqz v3, :cond_3e

    move v3, v1

    .line 1564
    :goto_1c
    iget-object v4, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v4}, Ls/n;->g()Ls/q;

    move-result-object v4

    invoke-virtual {v4}, Ls/q;->C()Ls/w;

    move-result-object v4

    .line 1565
    sget-object v5, Ls/w;->l:Ls/w;

    if-eq v4, v5, :cond_40

    sget-object v5, Ls/w;->f:Ls/w;

    if-eq v4, v5, :cond_40

    sget-object v5, Ls/w;->g:Ls/w;

    if-eq v4, v5, :cond_40

    .line 1569
    :goto_32
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v2

    invoke-interface {v2, v0, v3, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(ZZZ)V

    .line 1570
    return-void

    :cond_3c
    move v0, v2

    .line 1560
    goto :goto_15

    :cond_3e
    move v3, v2

    .line 1561
    goto :goto_1c

    :cond_40
    move v1, v2

    .line 1565
    goto :goto_32

    :cond_42
    move v3, v2

    move v0, v2

    goto :goto_1c
.end method

.method protected ab()V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1582
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1617
    :cond_e
    :goto_e
    return-void

    .line 1586
    :cond_f
    invoke-static {}, Lcom/google/android/maps/driveabout/app/dp;->a()Lcom/google/android/maps/driveabout/app/dp;

    move-result-object v2

    .line 1587
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->E()[Lo/P;

    move-result-object v1

    .line 1588
    if-eqz v1, :cond_e

    array-length v3, v1

    if-eqz v3, :cond_e

    .line 1592
    const/4 v4, 0x0

    .line 1595
    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->Q()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1596
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->b()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d0045

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v6

    .line 1613
    :goto_3d
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->l()Lcom/google/android/maps/driveabout/app/cL;

    move-result-object v0

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v2

    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->H()[Lo/b;

    move-result-object v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/cL;->a([Lo/P;I[Lo/b;Ljava/lang/CharSequence;ZZ)V

    goto :goto_e

    .line 1599
    :cond_5f
    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->j()Z

    move-result v3

    if-nez v3, :cond_7b

    .line 1600
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->b()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v6

    move v6, v0

    .line 1601
    goto :goto_3d

    .line 1602
    :cond_7b
    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->v()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 1603
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->b()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0065

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v6

    move v6, v0

    .line 1604
    goto :goto_3d

    .line 1605
    :cond_97
    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v3

    if-eqz v3, :cond_cd

    .line 1606
    iget-object v3, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->h()I

    move-result v3

    iget-object v4, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v4}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v4

    iget-object v5, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v5}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v5

    invoke-virtual {v5}, Lo/x;->q()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/dp;->a(ILo/I;I)Landroid/text/Spannable;

    move-result-object v4

    move v6, v0

    move v5, v0

    goto/16 :goto_3d

    .line 1610
    :cond_cd
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->x()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 1611
    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->b()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d008b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v6, v0

    move v5, v0

    goto/16 :goto_3d

    :cond_ea
    move v6, v0

    move v5, v0

    goto/16 :goto_3d
.end method

.method public final ac()V
    .registers 3

    .prologue
    .line 1748
    invoke-direct {p0}, Ls/q;->aw()V

    .line 1749
    new-instance v0, Lk/C;

    const-string v1, "showStreetView"

    invoke-direct {v0, v1}, Lk/C;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 1751
    invoke-virtual {p0}, Ls/q;->o()V

    .line 1752
    return-void
.end method

.method protected ad()V
    .registers 2

    .prologue
    .line 1770
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->c()V

    .line 1771
    invoke-direct {p0}, Ls/q;->aq()V

    .line 1772
    return-void
.end method

.method public final ae()V
    .registers 3

    .prologue
    .line 1779
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->c(Z)V

    .line 1780
    invoke-virtual {p0}, Ls/q;->af()V

    .line 1781
    return-void
.end method

.method protected af()V
    .registers 2

    .prologue
    .line 1784
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->l()V

    .line 1785
    return-void
.end method

.method public ag()V
    .registers 4

    .prologue
    .line 1827
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ShowDNHWarning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1829
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    new-instance v1, Ls/t;

    invoke-direct {v1, p0}, Ls/t;-><init>(Ls/q;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1840
    :goto_1d
    return-void

    .line 1838
    :cond_1e
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-direct {p0, v0}, Ls/q;->a(Lcom/google/android/maps/driveabout/app/cI;)V

    goto :goto_1d
.end method

.method public ah()V
    .registers 3

    .prologue
    .line 1857
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v0

    invoke-virtual {v0}, Lo/P;->g()Ljava/lang/String;

    move-result-object v0

    .line 1858
    invoke-static {v0}, Ln/m;->a(Ljava/lang/String;)Ln/m;

    move-result-object v0

    .line 1859
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cI;->a(Ln/m;)V

    .line 1860
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 234
    return-void
.end method

.method public final b(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 663
    invoke-direct {p0}, Ls/q;->aw()V

    .line 672
    invoke-virtual {p0, p1, p2}, Ls/q;->a(FF)V

    .line 673
    return-void
.end method

.method public final b(FFF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 688
    invoke-direct {p0}, Ls/q;->aw()V

    .line 691
    invoke-virtual {p0, p1, p2, p3}, Ls/q;->a(FFF)V

    .line 692
    return-void
.end method

.method protected b(I)V
    .registers 2
    .parameter

    .prologue
    .line 1328
    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/app/bM;)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f1000f3

    const v5, 0x7f1000f0

    const v4, 0x7f1000ef

    const v3, 0x7f1004bd

    const v2, 0x7f1004bc

    .line 394
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 396
    const v0, 0x7f10011d

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    .line 402
    :goto_25
    const v0, 0x7f1004b8

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 403
    const v0, 0x7f1004b9

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 408
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-nez v0, :cond_99

    .line 409
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 410
    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 411
    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    .line 412
    const v0, 0x7f10011b

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 413
    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 414
    const v0, 0x7f1004ba

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    .line 415
    invoke-virtual {p1, v5}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 416
    const v0, 0x7f1004bb

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    .line 417
    invoke-virtual {p1, v6}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 448
    :goto_64
    const v0, 0x7f1004c0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 454
    const v0, 0x7f1004c1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 461
    invoke-virtual {p0, p1}, Ls/q;->a(Lcom/google/android/maps/driveabout/app/bM;)V

    .line 464
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-nez v0, :cond_91

    .line 465
    const v0, 0x7f1004c0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 466
    const v0, 0x7f1004bf

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 467
    const v0, 0x7f1004be

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 468
    const v0, 0x7f1004c1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 470
    :cond_91
    return-void

    .line 398
    :cond_92
    const v0, 0x7f10011d

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    goto :goto_25

    .line 419
    :cond_99
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 420
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    .line 421
    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 426
    :goto_af
    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 427
    const v0, 0x7f10011b

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    .line 428
    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    .line 429
    const v0, 0x7f1004ba

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 430
    invoke-virtual {p1, v5}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    .line 431
    const v0, 0x7f1004bb

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 432
    invoke-virtual {p1, v6}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    goto :goto_64

    .line 423
    :cond_d1
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 424
    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    goto :goto_af
.end method

.method public final b(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 531
    invoke-direct {p0}, Ls/q;->aw()V

    .line 532
    new-instance v0, Lk/B;

    const-string v1, "marker"

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lk/B;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 536
    const-string v0, "t"

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 537
    invoke-virtual {p0, p1}, Ls/q;->a(Lcom/google/android/maps/driveabout/vector/d;)V

    .line 538
    return-void
.end method

.method public final b(Ln/Q;)V
    .registers 2
    .parameter

    .prologue
    .line 680
    invoke-direct {p0}, Ls/q;->aw()V

    .line 681
    invoke-virtual {p0, p1}, Ls/q;->a(Ln/Q;)V

    .line 682
    return-void
.end method

.method public final b(Lo/I;Lo/I;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 946
    invoke-direct {p0}, Ls/q;->aw()V

    .line 947
    invoke-virtual {p0, p1, p2}, Ls/q;->a(Lo/I;Lo/I;)V

    .line 948
    invoke-direct {p0}, Ls/q;->av()V

    .line 949
    return-void
.end method

.method public final b(Lo/I;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 963
    invoke-direct {p0}, Ls/q;->aw()V

    .line 964
    if-eqz p1, :cond_1e

    .line 965
    new-instance v0, Lk/D;

    const-string v1, "step"

    invoke-virtual {p1}, Lo/I;->i()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lk/D;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 967
    const-string v0, "p"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 969
    invoke-virtual {p0, p1, p2}, Ls/q;->a(Lo/I;Z)V

    .line 970
    invoke-direct {p0}, Ls/q;->av()V

    .line 972
    :cond_1e
    return-void
.end method

.method public final b(Lo/g;)V
    .registers 2
    .parameter

    .prologue
    .line 1041
    invoke-direct {p0}, Ls/q;->aw()V

    .line 1042
    invoke-virtual {p0, p1}, Ls/q;->a(Lo/g;)V

    .line 1043
    return-void
.end method

.method public final b(Lo/j;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 929
    invoke-direct {p0}, Ls/q;->aw()V

    .line 930
    invoke-virtual {p0}, Ls/q;->T()Z

    move-result v0

    if-nez v0, :cond_24

    .line 932
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-virtual {v1}, Lo/x;->q()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/a;->b(Lo/j;II)V

    .line 936
    :cond_24
    return-void
.end method

.method public b(Lo/x;[Lo/x;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 994
    invoke-direct {p0}, Ls/q;->aw()V

    .line 995
    invoke-virtual {p1}, Lo/x;->i()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 996
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->i()I

    move-result v0

    .line 997
    invoke-virtual {p1}, Lo/x;->k()I

    move-result v1

    if-le v1, v0, :cond_35

    .line 999
    invoke-virtual {p1, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls/q;->a(Lo/I;)V

    .line 1025
    :goto_31
    invoke-virtual {p0, p1, p2}, Ls/q;->a(Lo/x;[Lo/x;)V

    .line 1030
    return-void

    .line 1004
    :cond_35
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    goto :goto_31

    .line 1007
    :cond_3d
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(Lo/I;)V

    .line 1008
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->f()V

    .line 1022
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cI;->f(Z)V

    goto :goto_31
.end method

.method protected b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1222
    if-eqz p1, :cond_a

    .line 1223
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->k:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 1225
    :cond_a
    return-void
.end method

.method protected final c(Lo/g;)I
    .registers 4
    .parameter

    .prologue
    .line 1306
    invoke-virtual {p1}, Lo/g;->k()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lo/g;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1307
    :cond_c
    const v0, 0x7f0d00be

    .line 1314
    :goto_f
    return v0

    .line 1308
    :cond_10
    invoke-virtual {p1}, Lo/g;->n()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1309
    const v0, 0x7f0d00bd

    goto :goto_f

    .line 1310
    :cond_1a
    invoke-virtual {p1}, Lo/g;->o()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    invoke-virtual {p1}, Lo/g;->g_()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lo/g;->c()[Lo/x;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1312
    const v0, 0x7f0d00c3

    goto :goto_f

    .line 1314
    :cond_31
    const v0, 0x7f0d00bc

    goto :goto_f
.end method

.method public c()V
    .registers 1

    .prologue
    .line 261
    return-void
.end method

.method protected c(I)V
    .registers 3
    .parameter

    .prologue
    .line 1765
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/cK;->a(I)V

    .line 1766
    invoke-direct {p0}, Ls/q;->aq()V

    .line 1767
    return-void
.end method

.method public final c(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 542
    invoke-direct {p0}, Ls/q;->aw()V

    .line 543
    new-instance v0, Lk/B;

    const-string v1, "marker"

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lk/B;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 547
    const-string v0, "t"

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 548
    invoke-virtual {p0, p1}, Ls/q;->d(Lcom/google/android/maps/driveabout/vector/d;)V

    .line 549
    return-void
.end method

.method protected c(Lo/j;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1268
    invoke-virtual {p0}, Ls/q;->T()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1269
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-virtual {v1}, Lo/x;->q()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Lo/j;II)V

    .line 1273
    :cond_21
    return-void
.end method

.method public final c(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    invoke-direct {p0}, Ls/q;->aw()V

    .line 489
    new-instance v3, Lk/D;

    const-string v4, "mute"

    if-nez p1, :cond_3c

    move v0, v1

    :goto_c
    invoke-direct {v3, v4, v0}, Lk/D;-><init>(Ljava/lang/String;Z)V

    invoke-static {v3}, LA/f;->b(LA/j;)V

    .line 491
    const-string v0, "u"

    if-nez p1, :cond_3e

    :goto_16
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 493
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/a;->c(Z)V

    .line 494
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->o()V

    .line 495
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/cI;->b(Z)V

    .line 496
    invoke-direct {p0}, Ls/q;->aj()V

    .line 497
    return-void

    :cond_3c
    move v0, v2

    .line 489
    goto :goto_c

    :cond_3e
    move v1, v2

    .line 491
    goto :goto_16
.end method

.method public d()V
    .registers 1

    .prologue
    .line 241
    invoke-virtual {p0}, Ls/q;->e()V

    .line 242
    return-void
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 5
    .parameter

    .prologue
    .line 1206
    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/cm;

    if-eqz v0, :cond_34

    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1211
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->G()V

    .line 1212
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    .line 1213
    invoke-virtual {v0}, Lo/x;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lo/x;->a(I)Lo/I;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls/q;->a(Lo/I;)V

    .line 1214
    invoke-virtual {p0}, Ls/q;->ac()V

    .line 1219
    :cond_33
    :goto_33
    return-void

    .line 1215
    :cond_34
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/bR;

    if-eqz v0, :cond_33

    .line 1216
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    check-cast p1, Lcom/google/android/maps/driveabout/vector/bR;

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/bR;->m()Ln/R;

    move-result-object v2

    invoke-virtual {v2}, Ln/R;->a()Ln/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bl;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cI;Ln/m;)V

    goto :goto_33
.end method

.method public final d(Z)V
    .registers 4
    .parameter

    .prologue
    .line 699
    invoke-direct {p0}, Ls/q;->aw()V

    .line 700
    new-instance v0, Lk/D;

    const-string v1, "viewTraffic"

    invoke-direct {v0, v1, p1}, Lk/D;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 702
    const-string v0, "f"

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 704
    invoke-virtual {p0, p1}, Ls/q;->b(Z)V

    .line 707
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 253
    return-void
.end method

.method public final e(Z)V
    .registers 4
    .parameter

    .prologue
    .line 728
    invoke-direct {p0}, Ls/q;->aw()V

    .line 729
    new-instance v0, Lk/D;

    const-string v1, "viewSatellite"

    invoke-direct {v0, v1, p1}, Lk/D;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 731
    const-string v0, "S"

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 732
    invoke-virtual {p0, p1}, Ls/q;->h(Z)V

    .line 733
    return-void
.end method

.method protected f()I
    .registers 2

    .prologue
    .line 1447
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->j()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    invoke-virtual {v0}, Lm/b;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1449
    :cond_1c
    const/4 v0, 0x2

    .line 1451
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public final f(Z)V
    .registers 4
    .parameter

    .prologue
    .line 741
    invoke-direct {p0}, Ls/q;->aw()V

    .line 742
    new-instance v0, Lk/D;

    const-string v1, "viewBicycling"

    invoke-direct {v0, v1, p1}, Lk/D;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 744
    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 745
    invoke-virtual {p0, p1}, Ls/q;->i(Z)V

    .line 746
    return-void
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 1148
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->f()V

    .line 1149
    return-void
.end method

.method public final g(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1052
    invoke-direct {p0}, Ls/q;->aw()V

    .line 1053
    const-string v0, ","

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Ls/q;->s()V

    .line 1056
    invoke-direct {p0}, Ls/q;->av()V

    .line 1058
    if-eqz p1, :cond_1d

    .line 1059
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->h()V

    .line 1061
    :cond_1d
    return-void
.end method

.method protected h()V
    .registers 4

    .prologue
    .line 1156
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->i:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1157
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(F)F

    .line 1158
    invoke-virtual {p0}, Ls/q;->aa()V

    .line 1160
    :cond_1d
    return-void
.end method

.method protected h(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1232
    if-eqz p1, :cond_32

    .line 1233
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(Lcom/google/android/maps/driveabout/vector/D;)V

    .line 1239
    :goto_d
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v1

    invoke-static {v1}, Lo/O;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    const-string v1, "SatelliteImagery"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lt/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lt/s;

    .line 1242
    invoke-direct {p0}, Ls/q;->av()V

    .line 1243
    return-void

    .line 1234
    :cond_32
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->K()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1235
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(Lcom/google/android/maps/driveabout/vector/D;)V

    goto :goto_d

    .line 1237
    :cond_4a
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(Lcom/google/android/maps/driveabout/vector/D;)V

    goto :goto_d
.end method

.method protected i()V
    .registers 4

    .prologue
    .line 1167
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->i:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1168
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    const/high16 v1, -0x4080

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(F)F

    .line 1169
    invoke-virtual {p0}, Ls/q;->aa()V

    .line 1171
    :cond_1d
    return-void
.end method

.method protected i(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1246
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/cK;->b(Z)V

    .line 1247
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v1

    invoke-static {v1}, Lo/O;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    const-string v1, "BicyclingLayer"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lt/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lt/s;

    .line 1250
    invoke-direct {p0}, Ls/q;->av()V

    .line 1251
    return-void
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 1174
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->i()Z

    move-result v0

    return v0
.end method

.method protected k()V
    .registers 4

    .prologue
    .line 1228
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 1229
    return-void
.end method

.method protected l()V
    .registers 1

    .prologue
    .line 1286
    return-void
.end method

.method protected m()V
    .registers 1

    .prologue
    .line 1629
    return-void
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 1325
    return-void
.end method

.method protected o()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1759
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->l:Ls/w;

    invoke-virtual {v0, v1}, Ls/n;->a(Ls/w;)Ls/q;

    move-result-object v0

    check-cast v0, Ls/d;

    invoke-virtual {v0, v2}, Ls/d;->a_(Z)V

    .line 1761
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->l:Ls/w;

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 1762
    return-void
.end method

.method public p()V
    .registers 1

    .prologue
    .line 196
    return-void
.end method

.method public q()V
    .registers 1

    .prologue
    .line 202
    return-void
.end method

.method protected r()V
    .registers 2

    .prologue
    .line 1254
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->w()V

    .line 1255
    return-void
.end method

.method protected s()V
    .registers 1

    .prologue
    .line 1319
    return-void
.end method

.method protected t()V
    .registers 1

    .prologue
    .line 1322
    return-void
.end method

.method protected u()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1491
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->y()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1492
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/String;Z)V

    .line 1506
    :goto_24
    return-void

    .line 1494
    :cond_25
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 1495
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/String;Z)V

    goto :goto_24

    .line 1497
    :cond_3d
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    if-nez v0, :cond_55

    .line 1498
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/String;Z)V

    goto :goto_24

    .line 1500
    :cond_55
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    iget-object v2, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v2

    invoke-direct {p0}, Ls/q;->au()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cI;->a(Lcom/google/android/maps/driveabout/app/aN;Lo/I;ZZ)V

    goto :goto_24
.end method

.method protected v()V
    .registers 3

    .prologue
    .line 1654
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setTrafficMode(I)V

    .line 1656
    return-void
.end method

.method protected w()V
    .registers 6

    .prologue
    .line 1680
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    .line 1681
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, -0x1

    :goto_13
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v1

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v1, v4}, Lcom/google/android/maps/driveabout/app/cI;->setTimeRemaining(IZIZ)V

    .line 1685
    return-void

    .line 1681
    :cond_20
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->g()I

    move-result v0

    goto :goto_13
.end method

.method protected x()V
    .registers 4

    .prologue
    .line 1514
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v0

    .line 1515
    if-eqz v0, :cond_3b

    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lo/P;->d()Lo/Q;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lo/P;->d()Lo/Q;

    move-result-object v1

    invoke-virtual {v1}, Lo/Q;->a()I

    move-result v1

    if-lez v1, :cond_3b

    .line 1518
    iget-object v1, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-virtual {v0}, Lo/P;->d()Lo/Q;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lo/Q;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cI;->setTopOverlayText(Ljava/lang/CharSequence;)V

    .line 1522
    :goto_3a
    return-void

    .line 1520
    :cond_3b
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setTopOverlayText(Ljava/lang/CharSequence;)V

    goto :goto_3a
.end method

.method public y()V
    .registers 4

    .prologue
    .line 1718
    iget-object v0, p0, Ls/q;->a:Ls/n;

    sget-object v1, Ls/w;->f:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1719
    iget-object v0, p0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->y()V

    .line 1721
    :cond_14
    return-void
.end method

.method public z()V
    .registers 1

    .prologue
    .line 1729
    return-void
.end method
