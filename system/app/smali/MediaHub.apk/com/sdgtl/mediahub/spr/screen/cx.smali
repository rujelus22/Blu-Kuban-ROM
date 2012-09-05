.class final Lcom/sdgtl/mediahub/spr/screen/cx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/cw;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/cw;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->b:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/cw;->a(Lcom/sdgtl/mediahub/spr/screen/cw;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->b(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/cw;->c(Lcom/sdgtl/mediahub/spr/screen/cw;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/common/eq;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->r(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/db;->c:Lcom/sdgtl/mediahub/spr/screen/db;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/screen/db;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_5e
    return-void

    :cond_5f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cx;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->G(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    goto :goto_5e
.end method
