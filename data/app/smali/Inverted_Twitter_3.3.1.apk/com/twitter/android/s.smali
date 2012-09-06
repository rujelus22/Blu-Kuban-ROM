.class public final Lcom/twitter/android/s;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/twitter/android/BaseListFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/BaseListFragment;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/s;->a:Lcom/twitter/android/BaseListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/s;->a:Lcom/twitter/android/BaseListFragment;

    iget-boolean v0, v0, Lcom/twitter/android/BaseListFragment;->a:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/s;->a:Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v0}, Lcom/twitter/android/BaseListFragment;->f()Lcom/twitter/android/widget/f;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/s;->a:Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v1}, Lcom/twitter/android/BaseListFragment;->k()V

    iget-object v1, p0, Lcom/twitter/android/s;->a:Lcom/twitter/android/BaseListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/BaseListFragment;->a(Lcom/twitter/android/widget/f;Z)V

    :cond_17
    return-void
.end method
