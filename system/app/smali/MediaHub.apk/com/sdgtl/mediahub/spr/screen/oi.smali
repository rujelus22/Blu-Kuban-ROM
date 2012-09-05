.class final Lcom/sdgtl/mediahub/spr/screen/oi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/oh;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/dn;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/oh;Lcom/sdgtl/mediahub/spr/common/dn;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->b:Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->O(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->b:Lcom/sdgtl/mediahub/spr/common/dn;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->b:Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dn;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->P(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v0

    if-eqz v0, :cond_6b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "eula_typeCode"

    const-string v2, "03"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->f(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    goto :goto_3b

    :cond_6b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dn;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V

    goto :goto_3b

    :cond_99
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oi;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    goto :goto_3b
.end method
