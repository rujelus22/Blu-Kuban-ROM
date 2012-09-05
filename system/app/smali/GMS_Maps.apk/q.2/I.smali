.class public Lq/I;
.super Ljava/lang/Object;

# interfaces
.implements Lq/P;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/dO;

.field private final b:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/dO;Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    iput-object p2, p0, Lq/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    return-void
.end method

.method static synthetic a(Lq/I;Lq/B;)V
    .registers 2

    invoke-direct {p0, p1}, Lq/I;->b(Lq/B;)V

    return-void
.end method

.method static synthetic a(Lq/I;Lq/D;)V
    .registers 2

    invoke-direct {p0, p1}, Lq/I;->b(Lq/D;)V

    return-void
.end method

.method static synthetic a(Lq/I;Lq/E;)V
    .registers 2

    invoke-direct {p0, p1}, Lq/I;->b(Lq/E;)V

    return-void
.end method

.method private b(Lq/B;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lq/B;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mute"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {p1}, Lq/B;->c()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(ZZ)V

    :goto_19
    return-void

    :cond_1a
    move v0, v1

    goto :goto_16

    :cond_1c
    const-string v2, "compassButton"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->i()V

    goto :goto_19

    :cond_2a
    const-string v2, "back"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->k()V

    goto :goto_19

    :cond_38
    const-string v2, "routeOverview"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->b(Z)V

    goto :goto_19

    :cond_46
    const-string v2, "layers"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    const-string v1, "clear"

    invoke-virtual {p1, v1}, Lq/B;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->c(Z)V

    goto :goto_19

    :cond_5a
    const-string v2, "viewList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(Z)V

    goto :goto_19

    :cond_68
    const-string v1, "viewTraffic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {p1}, Lq/B;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->e(Z)V

    goto :goto_19

    :cond_7a
    const-string v1, "backToLocation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->e()V

    goto :goto_19

    :cond_88
    const-string v1, "viewSatellite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {p1}, Lq/B;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->d(Z)V

    goto :goto_19

    :cond_9a
    const-string v1, "zoomIn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->p()V

    goto/16 :goto_19

    :cond_a9
    const-string v1, "zoomOut"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->q()V

    goto/16 :goto_19

    :cond_b8
    const-string v1, "showStreetView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->c()V

    goto/16 :goto_19

    :cond_c7
    const-string v1, "FullUIEventPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19
.end method

.method private b(Lq/D;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lq/D;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_59

    invoke-virtual {p1}, Lq/D;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lq/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {p1}, Lq/D;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_36

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAIL: Unable to find view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lq/D;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Lq/D;->a()[Landroid/view/KeyEvent;

    move-result-object v2

    array-length v3, v2

    :goto_3e
    if-ge v0, v3, :cond_95

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_48
    invoke-virtual {p1}, Lq/D;->a()[Landroid/view/KeyEvent;

    move-result-object v1

    array-length v2, v1

    :goto_4d
    if-ge v0, v2, :cond_95

    aget-object v3, v1, v0

    iget-object v4, p0, Lq/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_59
    iget-object v1, p0, Lq/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e()Lcom/google/android/maps/driveabout/app/am;

    move-result-object v1

    invoke-virtual {p1}, Lq/D;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/am;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_78

    invoke-virtual {p1}, Lq/D;->a()[Landroid/view/KeyEvent;

    move-result-object v2

    array-length v3, v2

    :goto_6e
    if-ge v0, v3, :cond_95

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to deliver event to dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lq/D;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_95
    return-void
.end method

.method private b(Lq/E;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lq/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {p1, v1}, Lq/E;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)[Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {p1}, Lq/E;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    array-length v2, v1

    :goto_e
    if-ge v0, v2, :cond_52

    aget-object v3, v1, v0

    iget-object v4, p0, Lq/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    iget-object v2, p0, Lq/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e()Lcom/google/android/maps/driveabout/app/am;

    move-result-object v2

    invoke-virtual {p1}, Lq/E;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/am;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_35

    array-length v3, v1

    :goto_2b
    if-ge v0, v3, :cond_52

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to deliver event to dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lq/E;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    return-void
.end method


# virtual methods
.method public a(Lq/B;)V
    .registers 4

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    new-instance v1, Lq/J;

    invoke-direct {v1, p0, p1}, Lq/J;-><init>(Lq/I;Lq/B;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lq/D;)V
    .registers 4

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    new-instance v1, Lq/K;

    invoke-direct {v1, p0, p1}, Lq/K;-><init>(Lq/I;Lq/D;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lq/E;)V
    .registers 4

    iget-object v0, p0, Lq/I;->a:Lcom/google/android/maps/driveabout/app/dO;

    new-instance v1, Lq/L;

    invoke-direct {v1, p0, p1}, Lq/L;-><init>(Lq/I;Lq/E;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lq/m;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
