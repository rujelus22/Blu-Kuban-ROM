.class final Lcom/sdgtl/mediahub/spr/screen/sv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/su;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/su;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/sv;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/sv;->b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sv;->b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sv;->a:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/su;->a(Lcom/sdgtl/mediahub/spr/screen/su;)Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->i:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    return-void
.end method
