.class final Lcom/sdgtl/mediahub/spr/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x1

    if-eqz p2, :cond_4f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->i()V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->b()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;->a()Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;

    move-result-object v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->g(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->g(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->g(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    :cond_39
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_50

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/land/SDCardUnmountLand;

    :goto_47
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->startActivity(Landroid/content/Intent;)V

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    const-class v0, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;

    goto :goto_47

    :cond_53
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;->a()Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;->a()Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;->finish()V

    :cond_68
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->h(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/ao;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    if-ne v0, v1, :cond_4f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->j(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/e;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;J)V

    goto :goto_4f
.end method
