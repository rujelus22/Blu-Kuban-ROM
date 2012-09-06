.class public Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;
.super Lcom/google/android/apps/docs/app/AccountListeningActivity;
.source "TabletDocListActivity.java"

# interfaces
.implements LGY;
.implements LGZ;
.implements LeQ;
.implements LhC;
.implements Lie;
.implements LjD;
.implements LjE;
.implements Ljb;
.implements Lkd;
.implements Ly;


# instance fields
.field private a:I

.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LLz;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LOC;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LQN;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LTx;

.field public a:LVo;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/database/ContentObserver;

.field private a:Landroid/os/Bundle;

.field private a:Landroid/view/Menu;

.field private a:Landroid/view/MenuItem;

.field private a:Landroid/widget/Toast;

.field public a:Lcom/google/android/apps/docs/fragment/DocListFragment;

.field private a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

.field private a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

.field private a:Lcom/google/android/apps/docs/view/TitleBar;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Ldg;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LhB;

.field private final a:LhG;

.field public a:LhM;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LiY;

.field private final a:Lid;

.field private final a:Lii;

.field private final a:LjC;

.field private a:Ljava/lang/Runnable;

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Lje;

.field private a:Ljg;

.field public a:Lji;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lkc;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lmi;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private b:I

.field public b:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private b:Landroid/database/ContentObserver;

.field private final b:Landroid/os/Handler;

.field private b:Landroid/view/MenuItem;

.field public c:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/AccountListeningActivity;-><init>()V

    .line 234
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/os/Handler;

    .line 236
    invoke-static {}, Lkg;->b()Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, LjF;

    invoke-direct {v0, p0, p0, p0}, LjF;-><init>(LjD;LjE;Landroid/app/Activity;)V

    :goto_16
    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LjC;

    .line 239
    new-instance v0, LhD;

    invoke-direct {v0}, LhD;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    .line 240
    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    .line 241
    new-instance v0, LiZ;

    invoke-direct {v0}, LiZ;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LiY;

    .line 242
    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lje;

    .line 244
    new-instance v0, Lij;

    invoke-direct {v0}, Lij;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lii;

    .line 245
    new-instance v0, LhH;

    invoke-direct {v0}, LhH;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhG;

    .line 255
    iput-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljava/lang/Runnable;

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->i:Z

    .line 287
    iput-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/view/Menu;

    return-void

    :cond_4a
    move-object v0, v1

    .line 236
    goto :goto_16
.end method

.method private A()V
    .registers 2

    .prologue
    .line 1281
    new-instance v0, LjR;

    invoke-direct {v0, p0}, LjR;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljava/util/Map;

    .line 1291
    return-void
.end method

.method private B()V
    .registers 6

    .prologue
    .line 1399
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Ljava/util/EnumSet;

    move-result-object v0

    .line 1401
    sget-object v1, Lkb;->a:Lkb;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1402
    sget-object v2, Lkb;->b:Lkb;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1403
    sget-object v3, Lkb;->c:Lkb;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1404
    if-eqz v3, :cond_1b

    .line 1405
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->I()V

    .line 1408
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->g()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->f()Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    .line 1410
    :goto_28
    iget-object v4, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->g(Z)V

    .line 1411
    iget-object v4, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Z)V

    .line 1413
    if-eqz v3, :cond_46

    .line 1414
    if-nez v2, :cond_3c

    .line 1415
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->G()V

    .line 1435
    :goto_39
    return-void

    .line 1408
    :cond_3a
    const/4 v0, 0x0

    goto :goto_28

    .line 1417
    :cond_3c
    if-nez v1, :cond_42

    .line 1418
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->E()V

    goto :goto_39

    .line 1420
    :cond_42
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->C()V

    goto :goto_39

    .line 1424
    :cond_46
    if-eqz v1, :cond_56

    .line 1425
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1426
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->F()V

    goto :goto_39

    .line 1428
    :cond_52
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->D()V

    goto :goto_39

    .line 1431
    :cond_56
    const-string v0, "No panels are shown"

    invoke-static {v2, v0}, LafQ;->b(ZLjava/lang/Object;)V

    .line 1432
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->H()V

    goto :goto_39
.end method

.method private C()V
    .registers 3

    .prologue
    .line 1448
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 1449
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, v1}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1452
    return-void
.end method

.method private D()V
    .registers 3

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 1456
    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, v1}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1459
    return-void
.end method

.method private E()V
    .registers 4

    .prologue
    const/16 v2, 0x1001

    .line 1462
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 1463
    invoke-virtual {v0, v2}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, v1}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0, v1}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1466
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 1467
    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    invoke-virtual {v0, v1}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1469
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 1470
    invoke-virtual {v0, v2}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0, v1}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1472
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()Z

    .line 1473
    return-void
.end method

.method private F()V
    .registers 4

    .prologue
    const/16 v2, 0x2002

    .line 1476
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 1477
    invoke-virtual {v0, v2}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, v1}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0, v1}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1480
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 1481
    invoke-virtual {v0, v2}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0, v1}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1483
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 1484
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    invoke-virtual {v0, v1}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1486
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()Z

    .line 1487
    return-void
.end method

.method private G()V
    .registers 4

    .prologue
    const/16 v2, 0x1001

    .line 1490
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 1491
    invoke-virtual {v0, v2}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, v1}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0, v2}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0, v1}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1495
    return-void
.end method

.method private H()V
    .registers 4

    .prologue
    const/16 v2, 0x2002

    .line 1498
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 1499
    invoke-virtual {v0, v2}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, v1}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0, v2}, LH;->a(I)LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0, v1}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1503
    return-void
.end method

.method private I()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 1506
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Ljava/util/EnumSet;

    move-result-object v0

    .line 1507
    sget-object v1, Lkb;->c:Lkb;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1509
    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 1510
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1517
    :goto_19
    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    :cond_22
    return-void

    .line 1513
    :cond_23
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcQ;->preview_panel_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_19
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lji;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;",
            "Ljava/lang/String;",
            "Lji;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1525
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1526
    const-class v1, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1528
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1529
    const-string v2, "accountName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-interface {p3, v1, p1}, Lji;->a(Landroid/os/Bundle;Ljava/util/List;)V

    .line 1531
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1533
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private a()Lcom/google/android/apps/docs/fragment/PreviewFragment;
    .registers 3

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    sget v1, LcS;->preview_fragment:I

    invoke-virtual {v0, v1}, Lx;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)LhB;
    .registers 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)LhG;
    .registers 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhG;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)LiY;
    .registers 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LiY;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)Lid;
    .registers 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)Lii;
    .registers 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lii;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a()Ljava/util/EnumSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lkb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1371
    const-class v0, Lkb;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 1372
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    .line 1374
    :goto_13
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->g()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1375
    sget-object v2, Lkb;->a:Lkb;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1376
    sget-object v2, Lkb;->b:Lkb;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1377
    if-eqz v0, :cond_2a

    .line 1378
    sget-object v0, Lkb;->c:Lkb;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_2a
    :goto_2a
    return-object v1

    .line 1372
    :cond_2b
    const/4 v0, 0x0

    goto :goto_13

    .line 1380
    :cond_2d
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->f()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1381
    sget-object v2, Lkb;->b:Lkb;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1382
    if-eqz v0, :cond_40

    .line 1383
    sget-object v0, Lkb;->c:Lkb;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 1385
    :cond_40
    sget-object v0, Lkb;->a:Lkb;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 1388
    :cond_46
    if-eqz v0, :cond_4e

    .line 1389
    sget-object v0, Lkb;->c:Lkb;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 1391
    :cond_4e
    sget-object v0, Lkb;->b:Lkb;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)Lje;
    .registers 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lje;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)Ljg;
    .registers 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljg;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lji;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;",
            "Ljava/lang/String;",
            "Lji;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1538
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lji;)Landroid/content/Intent;

    move-result-object v0

    .line 1541
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1542
    return-void
.end method

.method private a(Landroid/view/Menu;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0}, Lkc;->a()LlQ;

    move-result-object v1

    .line 659
    if-nez v1, :cond_b

    .line 674
    :goto_8
    return-void

    .line 663
    :cond_9
    add-int/lit8 p2, p2, 0x1

    :cond_b
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge p2, v0, :cond_33

    .line 664
    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 665
    invoke-static {}, LlR;->values()[LlR;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v4, :cond_9

    aget-object v5, v3, v0

    .line 666
    invoke-virtual {v5}, LlR;->a()I

    move-result v6

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    if-ne v6, v7, :cond_30

    .line 667
    invoke-virtual {v5, v1}, LlR;->a(LlQ;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 665
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 672
    :cond_33
    sget v0, LcS;->menu_pin:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, LlQ;->k()Z

    move-result v0

    if-eqz v0, :cond_45

    sget v0, LcY;->menu_unpin:I

    :goto_41
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_8

    :cond_45
    sget v0, LcY;->menu_offline:I

    goto :goto_41
.end method

.method private a(Landroid/view/Menu;ILjava/lang/Runnable;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 614
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 616
    if-nez v0, :cond_1f

    .line 617
    const-string v0, "TabletDocListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Menu layout does not contain requested item id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_1e
    return-void

    .line 621
    :cond_1f
    new-instance v1, LjL;

    invoke-direct {v1, p0, p3}, LjL;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1e
.end method

.method private a(Landroid/view/Menu;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 644
    iget v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:I

    :goto_2
    iget v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:I

    if-ge v0, v1, :cond_10

    .line 645
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 647
    :cond_10
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->s()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "showDeleteEvent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1239
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;

    move-result-object v0

    .line 1241
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v1

    const-string v2, "deleteDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 1242
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Landroid/view/MenuItem;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method private a()[Lhq;
    .registers 4

    .prologue
    .line 1333
    .line 1334
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->c:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-virtual {v0}, LdL;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {}, LZG;->a()LdX;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lhq;->a(IILdX;)[Lhq;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/Menu;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 650
    iget v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:I

    :goto_2
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 651
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 654
    :cond_12
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->s()V

    .line 655
    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->t()V

    return-void
.end method

.method private b(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 587
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, LcS;->menu_rename:I

    if-ne v0, v1, :cond_d

    .line 588
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->h()V

    .line 603
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0

    .line 589
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, LcS;->menu_sharing:I

    if-ne v0, v1, :cond_19

    .line 590
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->q()V

    goto :goto_b

    .line 591
    :cond_19
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, LcS;->menu_delete:I

    if-ne v0, v1, :cond_25

    .line 592
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->i()V

    goto :goto_b

    .line 593
    :cond_25
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, LcS;->menu_send:I

    if-ne v0, v1, :cond_31

    .line 594
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->j()V

    goto :goto_b

    .line 595
    :cond_31
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, LcS;->menu_send_link:I

    if-ne v0, v1, :cond_3d

    .line 596
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->k()V

    goto :goto_b

    .line 597
    :cond_3d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, LcS;->menu_pin:I

    if-ne v0, v1, :cond_49

    .line 598
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->l()V

    goto :goto_b

    .line 600
    :cond_49
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private c(Landroid/view/Menu;)V
    .registers 5
    .parameter

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, LcV;->menu_doclist_activity:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 479
    sget v0, LcS;->menu_refresh_icon:I

    new-instance v1, LjV;

    invoke-direct {v1, p0}, LjV;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 491
    sget v0, LcS;->menu_create_new_doc:I

    new-instance v1, LjW;

    invoke-direct {v1, p0}, LjW;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 500
    sget v0, LcS;->menu_sortings:I

    new-instance v1, LjX;

    invoke-direct {v1, p0}, LjX;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 509
    sget v0, LcS;->menu_settings:I

    new-instance v1, LjY;

    invoke-direct {v1, p0}, LjY;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 520
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LFX;

    const-string v1, "enableMenuHelpMinApi"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    .line 522
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_8e

    .line 523
    sget v0, LcS;->menu_help:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 541
    :goto_44
    sget v0, LcS;->menu_send_feedback:I

    new-instance v1, Lka;

    invoke-direct {v1, p0}, Lka;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 553
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->c:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LdL;->a:LdL;

    if-ne v0, v1, :cond_6b

    .line 554
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, LcV;->menu_home_page_c:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 555
    sget v0, LcS;->menu_try_google_drive:I

    new-instance v1, LjJ;

    invoke-direct {v1, p0}, LjJ;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 564
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()LIi;

    move-result-object v0

    sget v1, LcS;->menu_search:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0, v1, v2}, LIi;->a(Landroid/view/MenuItem;LIl;)V

    .line 565
    sget v0, LcS;->menu_refresh_status:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/view/MenuItem;

    .line 566
    sget v0, LcS;->menu_refresh_icon:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/view/MenuItem;

    .line 567
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->s()V

    .line 568
    return-void

    .line 525
    :cond_8e
    sget v0, LcS;->menu_help:I

    new-instance v1, LjZ;

    invoke-direct {v1, p0}, LjZ;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    goto :goto_44
.end method

.method private d(Landroid/view/Menu;)V
    .registers 7
    .parameter

    .prologue
    .line 571
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 572
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 573
    sget v2, LcV;->menu_selection_action_bar:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 574
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 575
    :goto_11
    if-ge v0, v1, :cond_26

    .line 576
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 577
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    new-instance v4, LjK;

    invoke-direct {v4, p0, v2}, LjK;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Landroid/view/MenuItem;)V

    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 584
    :cond_26
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 712
    invoke-static {}, LZG;->a()LdX;

    move-result-object v0

    iget-boolean v0, v0, LdX;->a:Z

    if-eqz v0, :cond_42

    .line 713
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LXh;

    invoke-interface {v0, p1}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, LXg;->c()Z

    move-result v1

    .line 716
    invoke-virtual {v0}, LXg;->d()Z

    move-result v0

    .line 717
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capability for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " drive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " requested="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_42
    return-void
.end method

.method private f()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1222
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_26

    move v0, v1

    .line 1224
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lkg;->b(Landroid/content/res/Resources;)Z

    move-result v3

    .line 1226
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lkg;->d(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_23

    if-nez v0, :cond_25

    :cond_23
    if-eqz v3, :cond_28

    :cond_25
    :goto_25
    return v1

    :cond_26
    move v0, v2

    .line 1222
    goto :goto_f

    :cond_28
    move v1, v2

    .line 1226
    goto :goto_25
.end method

.method private g()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1438
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1439
    iget v2, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1a

    move v2, v0

    .line 1442
    :goto_12
    if-eqz v2, :cond_1c

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    .line 1444
    :goto_19
    return v0

    :cond_1a
    move v2, v1

    .line 1439
    goto :goto_12

    :cond_1c
    move v0, v1

    .line 1442
    goto :goto_19
.end method

.method private o()V
    .registers 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 377
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Ljava/util/EnumSet;

    move-result-object v1

    .line 379
    sget-object v2, Lkb;->a:Lkb;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 380
    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    invoke-virtual {v0, v2}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    .line 385
    :goto_19
    sget-object v2, Lkb;->b:Lkb;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 386
    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0, v2}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    .line 391
    :goto_26
    sget-object v2, Lkb;->c:Lkb;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 392
    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, v1}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    .line 397
    :goto_33
    invoke-virtual {v0}, LH;->a()I

    .line 398
    return-void

    .line 382
    :cond_37
    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    invoke-virtual {v0, v2}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    goto :goto_19

    .line 388
    :cond_3d
    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0, v2}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    goto :goto_26

    .line 394
    :cond_43
    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, v1}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    goto :goto_33
.end method

.method private p()V
    .registers 5

    .prologue
    .line 780
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    .line 781
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 783
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 785
    const/16 v1, 0x8

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 788
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lii;

    invoke-interface {v0}, Lii;->a()LhW;

    move-result-object v0

    .line 790
    :try_start_1b
    invoke-interface {v0}, LhW;->a()V
    :try_end_1e
    .catch LhL; {:try_start_1b .. :try_end_1e} :catch_2b

    .line 794
    :goto_1e
    invoke-interface {v0}, LhW;->a()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()LIi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    return-void

    .line 791
    :catch_2b
    move-exception v1

    .line 792
    const-string v1, "TabletDocListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildLabelAndWhereClause() failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private q()V
    .registers 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()V

    .line 922
    return-void
.end method

.method private r()V
    .registers 5

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/database/ContentObserver;

    if-nez v0, :cond_2c

    .line 937
    new-instance v0, LjO;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, LjO;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/database/ContentObserver;

    .line 946
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/docs/providers/DocListProvider;->g:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 948
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lje;

    invoke-interface {v0}, Lje;->a()LhW;

    move-result-object v0

    invoke-interface {v0}, LhW;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 949
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->t()V

    .line 952
    :cond_2c
    return-void
.end method

.method private s()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 962
    const-string v0, "TabletDocListActivity"

    const-string v3, "in updateWorkStatus"

    invoke-static {v0, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    .line 964
    iget-object v3, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Llu;

    invoke-interface {v3, v0}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v4

    .line 965
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LHW;

    invoke-interface {v0, v4}, LHW;->a(LkG;)Z

    move-result v5

    .line 966
    invoke-virtual {v4}, LkG;->a()Z

    move-result v0

    if-nez v0, :cond_23

    if-eqz v5, :cond_6c

    :cond_23
    move v0, v2

    .line 967
    :goto_24
    iget-object v3, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v3}, Lkc;->a()LOD;

    move-result-object v3

    sget-object v6, LOD;->b:LOD;

    if-ne v3, v6, :cond_6e

    move v3, v2

    .line 968
    :goto_2f
    if-nez v0, :cond_33

    if-eqz v3, :cond_70

    :cond_33
    move v3, v2

    .line 969
    :goto_34
    iget-object v6, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v6, v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(Z)V

    .line 972
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/view/MenuItem;

    if-eqz v0, :cond_74

    .line 973
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 974
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/view/MenuItem;

    if-nez v3, :cond_72

    :goto_46
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 981
    :goto_49
    if-eqz v5, :cond_6b

    invoke-virtual {v4}, LkG;->a()Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 982
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_6b

    .line 983
    new-instance v0, LjP;

    invoke-direct {v0, p0}, LjP;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljava/lang/Runnable;

    .line 994
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 997
    :cond_6b
    return-void

    :cond_6c
    move v0, v1

    .line 966
    goto :goto_24

    :cond_6e
    move v3, v1

    .line 967
    goto :goto_2f

    :cond_70
    move v3, v1

    .line 968
    goto :goto_34

    :cond_72
    move v2, v1

    .line 974
    goto :goto_46

    .line 976
    :cond_74
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/docs/view/TitleBar;->setSyncing(Z)V

    goto :goto_49
.end method

.method private t()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1000
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0}, Lkc;->a()LOD;

    move-result-object v0

    .line 1002
    sget-object v1, LjS;->a:[I

    invoke-virtual {v0}, LOD;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4a

    .line 1019
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown search state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1004
    :pswitch_2b
    sget v0, LcY;->search_in_progress:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/widget/Toast;

    .line 1006
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1022
    :goto_38
    :pswitch_38
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->s()V

    .line 1023
    return-void

    .line 1009
    :pswitch_3c
    sget v0, LcY;->search_showing_local_results_only:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/widget/Toast;

    .line 1011
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_38

    .line 1002
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_3c
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method private u()V
    .registers 3

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/database/ContentObserver;

    if-eqz v0, :cond_14

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/database/ContentObserver;

    .line 1031
    :cond_14
    return-void
.end method

.method private v()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 1034
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1036
    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lje;

    invoke-interface {v1}, Lje;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1038
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1040
    invoke-virtual {v0, v3, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1054
    :goto_16
    return-void

    .line 1043
    :cond_17
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1045
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1048
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1049
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, LcU;->navigation_breadcrumb:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 1052
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->w()V

    goto :goto_16
.end method

.method private w()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 1057
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, LcS;->collection_path:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1059
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1060
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 1062
    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhG;

    invoke-interface {v1}, LhG;->a()Ljava/util/List;

    move-result-object v7

    move v4, v5

    .line 1063
    :goto_1f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_6a

    .line 1064
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhI;

    .line 1065
    sget v2, LcU;->navigation_breadcrumb_item:I

    invoke-virtual {v6, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1067
    sget v3, LcS;->breadcrumb_text:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1068
    invoke-virtual {v1}, LhI;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    invoke-virtual {v1}, LhI;->a()Ljava/util/List;

    move-result-object v1

    .line 1071
    new-instance v8, LjQ;

    invoke-direct {v8, p0, v1}, LjQ;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Ljava/util/List;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    sget v1, LcS;->breadcrumb_arrow:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1081
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v4, v3, :cond_63

    .line 1082
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1085
    :cond_63
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1063
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1f

    .line 1087
    :cond_6a
    return-void
.end method

.method private x()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1172
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->B()V

    .line 1174
    invoke-static {}, Lkg;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1175
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LjC;

    invoke-interface {v0}, LjC;->a()V

    .line 1183
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->b(Z)V

    .line 1184
    return-void

    .line 1177
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    .line 1178
    invoke-virtual {v0}, Lx;->a()I

    move-result v1

    if-nez v1, :cond_f

    .line 1179
    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v1}, Landroid/support/v4/app/Fragment;-><init>()V

    invoke-virtual {v0, v1, v2}, LH;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0, v2}, LH;->a(Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    goto :goto_f
.end method

.method private y()V
    .registers 3

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->B()V

    .line 1189
    invoke-static {}, Lkg;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1190
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LjC;

    invoke-interface {v0}, LjC;->b()V

    .line 1193
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->b(Z)V

    .line 1194
    return-void
.end method

.method private z()V
    .registers 3

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, v1}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1213
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, v1}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, LH;->a(I)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 1215
    return-void
.end method


# virtual methods
.method protected a()LIC;
    .registers 3

    .prologue
    .line 451
    new-instance v1, LjU;

    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->c:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-direct {v1, p0, p0, v0}, LjU;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Landroid/app/Activity;LdL;)V

    return-object v1
.end method

.method public a()LhB;
    .registers 2

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    return-object v0
.end method

.method public a()Lid;
    .registers 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    return-object v0
.end method

.method public a()Lig;
    .registers 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lii;

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1295
    const-class v2, LQm;

    if-ne p1, v2, :cond_1a

    .line 1296
    if-nez p2, :cond_13

    :goto_8
    invoke-static {v0}, LafQ;->a(Z)V

    .line 1297
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lcom/google/android/apps/docs/fragment/PreviewFragment;

    move-result-object v0

    .line 1299
    if-nez v0, :cond_15

    const/4 v0, 0x0

    .line 1328
    :cond_12
    :goto_12
    return-object v0

    :cond_13
    move v0, v1

    .line 1296
    goto :goto_8

    .line 1299
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()LQm;

    move-result-object v0

    goto :goto_12

    .line 1301
    :cond_1a
    const-class v2, LOT;

    if-ne p1, v2, :cond_2a

    .line 1302
    if-nez p2, :cond_28

    :goto_20
    invoke-static {v0}, LafQ;->a(Z)V

    .line 1304
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lcom/google/android/apps/docs/fragment/PreviewFragment;

    move-result-object v0

    goto :goto_12

    :cond_28
    move v0, v1

    .line 1302
    goto :goto_20

    .line 1306
    :cond_2a
    const-class v0, [Lhq;

    if-ne p1, v0, :cond_33

    .line 1308
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()[Lhq;

    move-result-object v0

    goto :goto_12

    .line 1310
    :cond_33
    const-class v0, LpL;

    if-ne p1, v0, :cond_39

    move-object v0, p0

    .line 1313
    goto :goto_12

    .line 1314
    :cond_39
    const-class v0, LpF;

    if-ne p1, v0, :cond_40

    .line 1316
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    goto :goto_12

    .line 1319
    :cond_40
    if-nez p2, :cond_4a

    .line 1320
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1321
    if-nez v0, :cond_12

    .line 1328
    :cond_4a
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/app/AccountListeningActivity;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_12
.end method

.method public a()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1345
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1346
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    .line 1367
    :cond_f
    :goto_f
    return-object v0

    .line 1351
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/os/Bundle;

    .line 1352
    if-nez v0, :cond_1c

    .line 1353
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1356
    :cond_1c
    if-eqz v0, :cond_2c

    const-string v2, "query"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1357
    const-string v2, "app_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1360
    :cond_2c
    if-eqz v0, :cond_3c

    .line 1361
    const-string v2, "accountName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    :goto_34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v0, v1

    .line 1367
    goto :goto_f

    :cond_3c
    move-object v0, v1

    goto :goto_34
.end method

.method public a()V
    .registers 3

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()I

    move-result v0

    if-nez v0, :cond_13

    .line 1207
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lid;->a(Ljava/util/Set;)V

    .line 1209
    :cond_13
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 1108
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->setResult(ILandroid/content/Intent;)V

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->finish()V

    .line 1110
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->d(Landroid/view/Menu;)V

    .line 679
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "showRenameEvent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1250
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;

    move-result-object v0

    .line 1252
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v1

    const-string v2, "renameDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 1253
    return-void
.end method

.method public a(Ljava/lang/String;LeD;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0, p1, p2}, Lkc;->a(Ljava/lang/String;LeD;)V

    .line 447
    return-void
.end method

.method public a(LkT;)V
    .registers 7
    .parameter

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "sendLinkEvent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 900
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LeZ;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:LFX;

    invoke-static {p1, v0, v1}, LlQ;->a(LkT;LeZ;LFX;)Ljava/lang/String;

    move-result-object v0

    .line 902
    if-eqz v0, :cond_5e

    .line 904
    const-string v1, "TabletDocListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending link: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1}, LkT;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    :try_start_47
    sget v0, LcY;->menu_send_link:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_54
    .catch Landroid/content/ActivityNotFoundException; {:try_start_47 .. :try_end_54} :catch_55

    .line 918
    :goto_54
    return-void

    .line 912
    :catch_55
    move-exception v0

    .line 913
    const-string v1, "TabletDocListActivity"

    const-string v2, "Failed to send link"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 916
    :cond_5e
    const-string v0, "TabletDocListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Link failed. HTML URL is null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LkT;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 6

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, LkG;->c()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_19

    .line 432
    invoke-virtual {v0}, LkG;->c()V

    .line 435
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()LIi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, LIi;->a(Landroid/widget/Button;Ljava/lang/String;)V

    .line 438
    invoke-static {v0}, LnP;->a(LkG;)LnL;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a(LnL;)V

    .line 440
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1116
    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;I)V

    .line 684
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1233
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Ljava/util/Set;)V

    .line 1234
    return-void
.end method

.method public b(Ljava/lang/String;LeD;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lld;->a(Ljava/lang/String;Ljava/lang/String;)Lld;

    move-result-object v0

    .line 1101
    new-instance v1, LeN;

    invoke-direct {v1, p0, v0, p2}, LeN;-><init>(Landroid/content/Context;Lld;LeD;)V

    invoke-virtual {v1}, LeN;->a()Landroid/content/Intent;

    move-result-object v0

    .line 1103
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1104
    return-void
.end method

.method public b_()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1136
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1137
    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->i:Z

    .line 1169
    :goto_a
    return-void

    .line 1140
    :cond_b
    iput-boolean v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->i:Z

    .line 1142
    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->d()Z

    move-result v3

    .line 1143
    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v2}, Lid;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    move v2, v0

    .line 1144
    :goto_20
    if-eqz v2, :cond_49

    .line 1145
    if-eqz v3, :cond_45

    .line 1146
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->z()V

    .line 1158
    :cond_27
    :goto_27
    iget-object v3, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/view/Menu;

    if-eqz v3, :cond_3b

    .line 1159
    iget-object v3, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LjC;

    if-eqz v3, :cond_36

    if-eqz v2, :cond_36

    .line 1160
    iget-object v3, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LjC;

    invoke-interface {v3}, LjC;->c()V

    .line 1162
    :cond_36
    iget-object v3, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/view/Menu;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1168
    :cond_3b
    iget-object v3, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    if-nez v2, :cond_4f

    :goto_3f
    invoke-virtual {v3, v0}, Lcom/google/android/apps/docs/view/TitleBar;->setActionsVisible(Z)V

    goto :goto_a

    :cond_43
    move v2, v1

    .line 1143
    goto :goto_20

    .line 1148
    :cond_45
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->x()V

    goto :goto_27

    .line 1150
    :cond_49
    if-eqz v3, :cond_27

    .line 1151
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->y()V

    goto :goto_27

    :cond_4f
    move v0, v1

    .line 1168
    goto :goto_3f
.end method

.method public c(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1121
    const/high16 v0, 0x2400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1122
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1126
    const-string v0, "wasTaskRoot"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1128
    const-string v0, "desiredApplicationMode"

    sget-object v1, Lhf;->c:Lhf;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1131
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1132
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0}, Lkc;->b()V

    .line 1258
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .registers 4

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Lcom/google/android/apps/docs/app/BaseActivity;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->c:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ldg;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;LdL;Ljava/lang/String;Ldg;)V

    .line 405
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0, p1}, Lkc;->d(Ljava/lang/String;)V

    .line 1263
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkg;->a(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 1341
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0}, Lkc;->d()V

    .line 850
    return-void
.end method

.method public g_()V
    .registers 1

    .prologue
    .line 1219
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 859
    :goto_c
    return-void

    .line 858
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public i()V
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 867
    :goto_c
    return-void

    .line 866
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Ljava/util/Set;)V

    goto :goto_c
.end method

.method public j()V
    .registers 3

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 877
    :goto_c
    return-void

    .line 876
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, LeD;->c:LeD;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Ljava/lang/String;LeD;)V

    goto :goto_c
.end method

.method public k()V
    .registers 4

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 893
    :cond_c
    :goto_c
    return-void

    .line 886
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 887
    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Llu;

    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v2}, LhB;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v1

    .line 888
    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Llu;

    invoke-interface {v2, v1, v0}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v0

    .line 890
    if-eqz v0, :cond_c

    .line 891
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(LkT;)V

    goto :goto_c
.end method

.method public l()V
    .registers 4

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v1

    .line 926
    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Llu;

    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_32

    .line 930
    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Lcom/google/android/apps/docs/view/DocListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/view/DocListView;->a(LkR;)V

    .line 931
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0}, Lkc;->b()V

    .line 933
    :cond_32
    return-void
.end method

.method public m()V
    .registers 3

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 1092
    const-string v0, "TabletDocListActivity"

    const-string v1, "in TDLA.onContentObserverNotification"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0}, Lkc;->b()V

    .line 1095
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->s()V

    .line 1096
    return-void
.end method

.method public n()V
    .registers 2

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()V

    .line 1199
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 844
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0, p3}, Lkc;->a(Landroid/content/Intent;)V

    .line 845
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/AccountListeningActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 419
    const-string v0, "TabletDocListActivity"

    const-string v1, "in onConfigurationChanged"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "configChangedEvent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 423
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 25
    .parameter

    .prologue
    .line 291
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/os/Bundle;

    .line 292
    invoke-super/range {p0 .. p1}, Lcom/google/android/apps/docs/app/AccountListeningActivity;->onCreate(Landroid/os/Bundle;)V

    .line 293
    const-string v2, "TabletDocListActivity"

    const-string v3, "in onCreate"

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v2, Ljh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lji;

    invoke-direct {v2, v3}, Ljh;-><init>(Lji;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljg;

    .line 297
    new-instance v2, Lke;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Llu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LHW;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljg;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lii;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lje;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LanD;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LOC;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhM;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lji;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhG;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lmi;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LLz;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LQN;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->c:LanD;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LeZ;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:LFX;

    move-object/from16 v22, v0

    move-object/from16 v11, p0

    invoke-direct/range {v2 .. v22}, Lke;-><init>(Llu;LHW;LhB;Lid;Ljg;Lii;Lje;LanD;Lkd;LOC;LhM;Lji;LhG;LdE;Lmi;LLz;LQN;LanD;LeZ;LFX;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->A()V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v3

    .line 312
    sget v2, LcU;->tablet_doclist:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->setContentView(I)V

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lcom/google/android/apps/docs/fragment/PreviewFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    .line 314
    sget v2, LcS;->doc_list_fragment:I

    invoke-virtual {v3, v2}, Lx;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/docs/fragment/DocListFragment;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    .line 315
    sget v2, LcS;->navigation_fragment:I

    invoke-virtual {v3, v2}, Lx;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/docs/fragment/NavigationFragment;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    .line 317
    sget v2, LcS;->title_bar:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/docs/view/TitleBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/view/TitleBar;->getVisibility()I

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()LIi;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-interface {v2, v3}, LIi;->a(LIB;)V

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->o()V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, LhB;->a(LhC;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lid;->a(Lie;)V

    .line 330
    if-eqz p1, :cond_104

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LiY;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, LiY;->b(Landroid/os/Bundle;)V

    .line 338
    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LHW;

    invoke-interface {v2}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_155

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->finish()V

    .line 344
    :goto_112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v2}, LhB;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->e(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a(Lx;)V

    .line 347
    new-instance v2, LjH;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, LjH;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/database/ContentObserver;

    .line 359
    new-instance v2, LjT;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, LjT;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LTx;

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    invoke-virtual {v2}, LdE;->a()V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    const-string v3, "/tabletDoclist"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 373
    return-void

    .line 341
    :cond_155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lkc;->a(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_112
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 467
    iput-object p1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/view/Menu;

    .line 468
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:I

    .line 469
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->c(Landroid/view/Menu;)V

    .line 470
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:I

    .line 471
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->d(Landroid/view/Menu;)V

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 836
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0}, Lkc;->a()V

    .line 837
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 838
    invoke-super {p0}, Lcom/google/android/apps/docs/app/AccountListeningActivity;->onDestroy()V

    .line 839
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 802
    const-string v0, "TabletDocListActivity"

    const-string v1, "in onPause"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LTx;

    invoke-static {v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->b(LTx;)V

    .line 805
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 806
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->u()V

    .line 808
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx;->b(Ly;)V

    .line 810
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_30

    .line 811
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Landroid/widget/Toast;

    .line 815
    :cond_30
    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "tabletDoclistPortraitDuration"

    :goto_3a
    invoke-virtual {v1, p0, v0}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    invoke-super {p0}, Lcom/google/android/apps/docs/app/AccountListeningActivity;->onPause()V

    .line 819
    return-void

    .line 815
    :cond_41
    const-string v0, "tabletDoclistLandscapeDuration"

    goto :goto_3a
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 633
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 634
    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;Z)V

    .line 635
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b(Landroid/view/Menu;Z)V

    .line 640
    :goto_14
    return v2

    .line 637
    :cond_15
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;Z)V

    .line 638
    iget v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/view/Menu;I)V

    goto :goto_14
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 729
    invoke-super {p0}, Lcom/google/android/apps/docs/app/AccountListeningActivity;->onResume()V

    .line 730
    const-string v0, "TabletDocListActivity"

    const-string v1, "in onResume"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->r()V

    .line 734
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, LIi;->a(Landroid/widget/Button;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lje;

    invoke-interface {v1}, Lje;->b()LhW;

    move-result-object v1

    invoke-interface {v1}, LhW;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LIi;->a(Ljava/lang/String;)V

    .line 737
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->s()V

    .line 739
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v0

    .line 741
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()LIi;

    move-result-object v1

    new-instance v2, LjM;

    invoke-direct {v2, p0}, LjM;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    invoke-interface {v1, v3, v0, v2}, LIi;->a(Landroid/widget/Button;[Landroid/accounts/Account;LIj;)V

    .line 752
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/docs/providers/DocListProvider;->i:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 754
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LTx;

    invoke-static {v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a(LTx;)V

    .line 756
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx;->a(Ly;)V

    .line 758
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->i:Z

    if-eqz v0, :cond_67

    .line 762
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b:Landroid/os/Handler;

    new-instance v1, LjN;

    invoke-direct {v1, p0}, LjN;-><init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 770
    :cond_67
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkg;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 771
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->v()V

    .line 776
    :goto_74
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    invoke-virtual {v0, p0}, LdE;->a(Ljava/lang/Object;)V

    .line 777
    return-void

    .line 773
    :cond_7a
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->p()V

    goto :goto_74
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 823
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/AccountListeningActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 824
    const-string v0, "TabletDocListActivity"

    const-string v1, "in onSaveInstanceState"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v0, p1}, LhB;->b(Landroid/os/Bundle;)V

    .line 827
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lid;

    invoke-interface {v0, p1}, Lid;->b(Landroid/os/Bundle;)V

    .line 828
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lji;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Ljg;

    invoke-interface {v1}, Ljg;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lji;->a(Landroid/os/Bundle;Ljava/util/List;)V

    .line 829
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LiY;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()I

    move-result v1

    invoke-interface {v0, v1}, LiY;->a(I)V

    .line 830
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LiY;

    invoke-interface {v0, p1}, LiY;->a(Landroid/os/Bundle;)V

    .line 831
    return-void
.end method

.method public onSearchRequested()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 694
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 699
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    invoke-static {v0}, LnP;->a(LkG;)LnL;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a(LnL;)V

    .line 701
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lel;

    iget-object v2, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v2}, LhB;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lel;->a()Lek;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a(Landroid/content/res/Resources;Lek;)Landroid/os/Bundle;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LhB;

    invoke-interface {v1, v0}, LhB;->b(Landroid/os/Bundle;)V

    .line 707
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 708
    const/4 v0, 0x1

    return v0
.end method
