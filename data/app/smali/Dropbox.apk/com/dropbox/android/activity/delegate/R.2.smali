.class final Lcom/dropbox/android/activity/delegate/R;
.super Landroid/os/Handler;
.source "panda.py"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/activity/E;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/delegate/R;->a:Ljava/lang/ref/WeakReference;

    .line 100
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 107
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/net/Uri;

    .line 108
    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/dropbox/android/activity/delegate/R;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/android/activity/E;

    .line 111
    if-nez v2, :cond_1b

    .line 116
    :goto_1a
    return-void

    .line 115
    :cond_1b
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v3, v1, v0}, Lcom/dropbox/android/activity/E;->a(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1a
.end method
