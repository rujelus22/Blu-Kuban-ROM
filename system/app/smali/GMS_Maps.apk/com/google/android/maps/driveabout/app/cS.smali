.class Lcom/google/android/maps/driveabout/app/cS;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationView;

.field private final b:Landroid/view/View;

.field private final c:Z

.field private d:Ljava/lang/Runnable;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cS;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cS;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/app/cS;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/cS;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cS;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/cS;->d:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cS;->e:Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cS;->b:Landroid/view/View;

    if-eqz p1, :cond_e

    :goto_a
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    return-void

    :cond_e
    const v0, 0x7f040008

    goto :goto_a
.end method


# virtual methods
.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cS;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cS;->e:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->b:Landroid/view/View;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/cS;->c:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cS;->d:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_24
    new-instance v0, Lcom/google/android/maps/driveabout/app/cT;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cT;-><init>(Lcom/google/android/maps/driveabout/app/cS;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->d:Ljava/lang/Runnable;

    goto :goto_b
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cS;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cS;->b(Z)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cS;->e:Z

    return v0
.end method
