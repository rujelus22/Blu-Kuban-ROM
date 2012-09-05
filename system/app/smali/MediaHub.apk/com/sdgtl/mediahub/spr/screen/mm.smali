.class final Lcom/sdgtl/mediahub/spr/screen/mm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/mm;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/mm;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->finish()V

    return-void
.end method
