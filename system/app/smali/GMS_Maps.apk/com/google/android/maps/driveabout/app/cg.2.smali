.class Lcom/google/android/maps/driveabout/app/cG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationView;

.field private final b:Landroid/view/View;

.field private final c:Z

.field private d:Ljava/lang/Runnable;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cG;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cG;->b:Landroid/view/View;

    .line 1625
    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/app/cG;->c:Z

    .line 1626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->d:Ljava/lang/Runnable;

    .line 1627
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/cG;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1612
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cG;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1665
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/cG;->d:Ljava/lang/Runnable;

    .line 1666
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cG;->e:Z

    .line 1667
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cG;->b:Landroid/view/View;

    if-eqz p1, :cond_e

    :goto_a
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 1668
    return-void

    .line 1667
    :cond_e
    const v0, 0x7f050011

    goto :goto_a
.end method


# virtual methods
.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    .line 1640
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cG;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1649
    :goto_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cG;->e:Z

    .line 1653
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->b:Landroid/view/View;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/cG;->c:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;IZ)V

    .line 1654
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cG;->d:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1655
    return-void

    .line 1642
    :cond_24
    new-instance v0, Lcom/google/android/maps/driveabout/app/cH;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cH;-><init>(Lcom/google/android/maps/driveabout/app/cG;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->d:Ljava/lang/Runnable;

    goto :goto_b
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 1659
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cG;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1661
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cG;->b(Z)V

    .line 1662
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1630
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cG;->e:Z

    return v0
.end method
