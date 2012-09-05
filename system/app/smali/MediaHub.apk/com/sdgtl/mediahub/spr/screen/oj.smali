.class final Lcom/sdgtl/mediahub/spr/screen/oj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/oh;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/oh;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/oj;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/oj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oj;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/oj;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oj;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/oj;->b:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/common/dn;->c()Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x0

    :goto_2b
    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oj;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/oj;->b:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oj;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oj;->a:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Ljava/util/ArrayList;)V

    return-void

    :cond_49
    const/4 v1, 0x1

    goto :goto_2b
.end method
