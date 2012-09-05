.class final Lcom/sdgtl/mediahub/spr/common/fr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fr;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fr;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;->a(Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fr;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;->a(Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fr;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;->a(Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    :cond_1c
    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->a()Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    if-nez v0, :cond_51

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fr;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fr;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_4e

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/land/MyMediaLand;

    :goto_30
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    :goto_34
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "app_destory"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "showDateSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fr;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fr;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;->finish()V

    return-void

    :cond_4e
    const-class v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    goto :goto_30

    :cond_51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fr;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    const-class v2, Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_34
.end method
