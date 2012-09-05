.class final Lcom/sdgtl/mediahub/spr/screen/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/d;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/d;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/d;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;Z)V

    goto :goto_8

    :cond_17
    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->a()Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/d;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->a()Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/Main;->b()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/d;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/d;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_8

    :cond_4d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/d;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/d;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_8

    :cond_5c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/d;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/d;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->finish()V

    goto :goto_8
.end method
