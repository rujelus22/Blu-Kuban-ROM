.class public abstract Lcom/google/googlenav/android/BaseMapsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private dialogToBeDismissed:Landroid/app/Dialog;

.field private shownDialogs:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->shownDialogs:Ljava/util/Vector;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->dialogToBeDismissed:Landroid/app/Dialog;

    return-void
.end method

.method private static actuallyDismiss(Landroid/app/Dialog;)V
    .registers 3
    .parameter

    .prologue
    .line 175
    if-nez p0, :cond_3

    .line 187
    :goto_2
    return-void

    .line 179
    :cond_3
    :try_start_3
    instance-of v0, p0, Lcom/google/googlenav/ui/view/android/V;

    if-eqz v0, :cond_14

    .line 180
    check-cast p0, Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->t()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_2

    .line 184
    :catch_d
    move-exception v0

    .line 185
    const-string v1, "Dialog hide"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 182
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_d

    goto :goto_2
.end method

.method private static actuallyShow(Landroid/app/Dialog;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    if-nez p0, :cond_3

    .line 106
    :goto_2
    return-void

    .line 101
    :cond_3
    instance-of v0, p0, Lcom/google/googlenav/ui/view/android/V;

    if-eqz v0, :cond_d

    .line 102
    check-cast p0, Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->s()V

    goto :goto_2

    .line 104
    :cond_d
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_2
.end method

.method private static isFullScreen(Landroid/app/Dialog;)Z
    .registers 2
    .parameter

    .prologue
    .line 109
    instance-of v0, p0, Lcom/google/googlenav/ui/view/android/V;

    if-eqz v0, :cond_b

    .line 110
    check-cast p0, Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->O_()Z

    move-result v0

    .line 112
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public dismissDialog(Landroid/app/Dialog;)V
    .registers 4
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    instance-of v1, p1, Lcom/google/googlenav/ui/view/android/V;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 138
    check-cast v0, Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->u()Z

    move-result v0

    .line 143
    :cond_c
    iget-object v1, p0, Lcom/google/googlenav/android/BaseMapsActivity;->shownDialogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/google/googlenav/android/BaseMapsActivity;->shownDialogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2f

    if-nez v0, :cond_2f

    .line 145
    iget-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->dialogToBeDismissed:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->actuallyDismiss(Landroid/app/Dialog;)V

    .line 146
    invoke-static {p1}, Lcom/google/googlenav/android/BaseMapsActivity;->actuallyDismiss(Landroid/app/Dialog;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->dialogToBeDismissed:Landroid/app/Dialog;

    .line 160
    :goto_29
    iget-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->shownDialogs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void

    .line 148
    :cond_2f
    invoke-static {p1}, Lcom/google/googlenav/android/BaseMapsActivity;->isFullScreen(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 152
    invoke-static {p1}, Lcom/google/googlenav/android/BaseMapsActivity;->actuallyDismiss(Landroid/app/Dialog;)V

    goto :goto_29

    .line 157
    :cond_39
    iget-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->dialogToBeDismissed:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->actuallyDismiss(Landroid/app/Dialog;)V

    .line 158
    iput-object p1, p0, Lcom/google/googlenav/android/BaseMapsActivity;->dialogToBeDismissed:Landroid/app/Dialog;

    goto :goto_29
.end method

.method public abstract getState()Lcom/google/googlenav/android/i;
.end method

.method public getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getUiThreadHandler()Lcom/google/googlenav/android/Y;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public declared-synchronized showDialog(Landroid/app/Dialog;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/googlenav/android/BaseMapsActivity;->actuallyShow(Landroid/app/Dialog;)V

    .line 89
    iget-object v0, p0, Lcom/google/googlenav/android/BaseMapsActivity;->shownDialogs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 91
    monitor-exit p0

    return-void

    .line 88
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
