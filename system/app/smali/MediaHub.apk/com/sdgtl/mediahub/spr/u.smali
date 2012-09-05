.class final Lcom/sdgtl/mediahub/spr/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/u;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/u;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/u;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/u;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/c/a;)V

    :cond_13
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/u;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_27
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v1

    if-nez v1, :cond_2f

    if-nez v0, :cond_32

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    goto :goto_27

    :cond_32
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/u;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->b:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_2f
.end method
