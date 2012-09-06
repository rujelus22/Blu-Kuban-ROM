.class public final Lcom/dropbox/android/provider/q;
.super Landroid/database/ContentObserver;
.source "panda.py"


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/provider/p;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dropbox/android/provider/q;->a:Ljava/lang/ref/WeakReference;

    .line 69
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/android/provider/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/provider/p;

    .line 79
    if-eqz v0, :cond_d

    .line 80
    invoke-virtual {v0, p1}, Lcom/dropbox/android/provider/p;->a(Z)V

    .line 82
    :cond_d
    return-void
.end method
