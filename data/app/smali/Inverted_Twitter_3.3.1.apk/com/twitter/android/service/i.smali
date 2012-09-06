.class final Lcom/twitter/android/service/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/twitter/android/service/TwitterService;


# direct methods
.method constructor <init>(Lcom/twitter/android/service/TwitterService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/service/i;->a:Lcom/twitter/android/service/TwitterService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const-string v1, "ibinder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/service/k;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v0}, Lcom/twitter/android/service/k;->a(Landroid/content/Intent;)V

    :cond_11
    iget-object v0, p0, Lcom/twitter/android/service/i;->a:Lcom/twitter/android/service/TwitterService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/service/TwitterService;->a(I)V

    return-void
.end method
