.class final Lcom/sdgtl/mediahub/spr/common/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic a:Ljava/util/ArrayList;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/ag;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/ag;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "product_id"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dl;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dl;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ag;->b:Landroid/content/Context;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->h:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    return-void
.end method
