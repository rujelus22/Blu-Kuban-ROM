.class final Lcom/sdgtl/mediahub/spr/screen/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/b;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/b;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/b;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;Z)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/b;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->c:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/b;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->finish()V

    goto :goto_6
.end method
