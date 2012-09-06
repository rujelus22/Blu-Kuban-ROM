.class public Lk/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/P;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/dD;

.field private final b:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/dD;Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    .line 41
    iput-object p2, p0, Lk/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    .line 42
    return-void
.end method

.method static synthetic a(Lk/I;Lk/C;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lk/I;->b(Lk/C;)V

    return-void
.end method

.method static synthetic a(Lk/I;Lk/E;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lk/I;->b(Lk/E;)V

    return-void
.end method

.method static synthetic a(Lk/I;Lk/F;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lk/I;->b(Lk/F;)V

    return-void
.end method

.method private b(Lk/C;)V
    .registers 6
    .parameter

    .prologue
    .line 78
    invoke-virtual {p1}, Lk/C;->b()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "mute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 82
    iget-object v1, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {p1}, Lk/C;->c()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Z)V

    .line 110
    :goto_18
    return-void

    .line 82
    :cond_19
    const/4 v0, 0x0

    goto :goto_15

    .line 83
    :cond_1b
    const-string v1, "compassButton"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 84
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->m()V

    goto :goto_18

    .line 85
    :cond_29
    const-string v1, "back"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 86
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->o()V

    goto :goto_18

    .line 87
    :cond_37
    const-string v1, "routeOverview"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 88
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->j()V

    goto :goto_18

    .line 89
    :cond_45
    const-string v1, "layers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 90
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    const-string v1, "clear"

    invoke-virtual {p1, v1}, Lk/C;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Z)V

    goto :goto_18

    .line 92
    :cond_59
    const-string v1, "viewList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 93
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->e()V

    goto :goto_18

    .line 94
    :cond_67
    const-string v1, "viewTraffic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 95
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {p1}, Lk/C;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->d(Z)V

    goto :goto_18

    .line 96
    :cond_79
    const-string v1, "backToLocation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 97
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->h()V

    goto :goto_18

    .line 98
    :cond_87
    const-string v1, "viewSatellite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 99
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {p1}, Lk/C;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->c(Z)V

    goto :goto_18

    .line 100
    :cond_99
    const-string v1, "zoomIn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 101
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->u()V

    goto/16 :goto_18

    .line 102
    :cond_a8
    const-string v1, "zoomOut"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 103
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->v()V

    goto/16 :goto_18

    .line 104
    :cond_b7
    const-string v1, "showStreetView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 105
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->f()V

    goto/16 :goto_18

    .line 108
    :cond_c6
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

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18
.end method

.method private b(Lk/E;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1}, Lk/E;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_59

    .line 114
    invoke-virtual {p1}, Lk/E;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 115
    iget-object v1, p0, Lk/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {p1}, Lk/E;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 116
    if-nez v1, :cond_36

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAIL: Unable to find view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lk/E;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_36
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 120
    invoke-virtual {p1}, Lk/E;->a()[Landroid/view/KeyEvent;

    move-result-object v2

    array-length v3, v2

    :goto_3e
    if-ge v0, v3, :cond_95

    aget-object v4, v2, v0

    .line 121
    invoke-virtual {v1, v4}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 124
    :cond_48
    invoke-virtual {p1}, Lk/E;->a()[Landroid/view/KeyEvent;

    move-result-object v1

    array-length v2, v1

    :goto_4d
    if-ge v0, v2, :cond_95

    aget-object v3, v1, v0

    .line 125
    iget-object v4, p0, Lk/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 129
    :cond_59
    iget-object v1, p0, Lk/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e()Lcom/google/android/maps/driveabout/app/al;

    move-result-object v1

    invoke-virtual {p1}, Lk/E;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/al;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_78

    .line 131
    invoke-virtual {p1}, Lk/E;->a()[Landroid/view/KeyEvent;

    move-result-object v2

    array-length v3, v2

    :goto_6e
    if-ge v0, v3, :cond_95

    aget-object v4, v2, v0

    .line 132
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 135
    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to deliver event to dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lk/E;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_95
    return-void
.end method

.method private b(Lk/F;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lk/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {p1, v1}, Lk/F;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)[Landroid/view/MotionEvent;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Lk/F;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 144
    array-length v2, v1

    :goto_e
    if-ge v0, v2, :cond_52

    aget-object v3, v1, v0

    .line 145
    iget-object v4, p0, Lk/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 148
    :cond_1a
    iget-object v2, p0, Lk/I;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e()Lcom/google/android/maps/driveabout/app/al;

    move-result-object v2

    invoke-virtual {p1}, Lk/F;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/al;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_35

    .line 150
    array-length v3, v1

    :goto_2b
    if-ge v0, v3, :cond_52

    aget-object v4, v1, v0

    .line 151
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 154
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to deliver event to dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lk/F;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_52
    return-void
.end method


# virtual methods
.method public a(Lk/C;)V
    .registers 4
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    new-instance v1, Lk/J;

    invoke-direct {v1, p0, p1}, Lk/J;-><init>(Lk/I;Lk/C;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public a(Lk/E;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    new-instance v1, Lk/K;

    invoke-direct {v1, p0, p1}, Lk/K;-><init>(Lk/I;Lk/E;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public a(Lk/F;)V
    .registers 4
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lk/I;->a:Lcom/google/android/maps/driveabout/app/dD;

    new-instance v1, Lk/L;

    invoke-direct {v1, p0, p1}, Lk/L;-><init>(Lk/I;Lk/F;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public a(Lk/n;)V
    .registers 3
    .parameter

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
