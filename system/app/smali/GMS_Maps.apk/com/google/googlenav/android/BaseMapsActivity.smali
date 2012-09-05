.class public abstract Lcom/google/googlenav/android/BaseMapsActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->b:Landroid/app/Dialog;

    return-void
.end method

.method private static c(Landroid/app/Dialog;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    instance-of v0, p0, Lcom/google/googlenav/ui/view/android/ap;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->t()V

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_2
.end method

.method private static d(Landroid/app/Dialog;)Z
    .registers 2

    instance-of v0, p0, Lcom/google/googlenav/ui/view/android/ap;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->L_()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private static e(Landroid/app/Dialog;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    instance-of v0, p0, Lcom/google/googlenav/ui/view/android/ap;

    if-eqz v0, :cond_14

    check-cast p0, Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ap;->u()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_2

    :catch_d
    move-exception v0

    const-string v1, "Dialog hide"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_d

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Dialog;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/googlenav/android/BaseMapsActivity;->c(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/app/Dialog;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->b:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->e(Landroid/app/Dialog;)V

    invoke-static {p1}, Lcom/google/googlenav/android/BaseMapsActivity;->e(Landroid/app/Dialog;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->b:Landroid/app/Dialog;

    :goto_1b
    iget-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_21
    invoke-static {p1}, Lcom/google/googlenav/android/BaseMapsActivity;->d(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p1}, Lcom/google/googlenav/android/BaseMapsActivity;->e(Landroid/app/Dialog;)V

    goto :goto_1b

    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->b:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->e(Landroid/app/Dialog;)V

    iput-object p1, p0, Lcom/google/googlenav/android/BaseMapsActivity;->b:Landroid/app/Dialog;

    goto :goto_1b
.end method

.method public abstract f()Lcom/google/googlenav/android/l;
.end method

.method public r()Lcom/google/googlenav/ui/view/android/cb;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
