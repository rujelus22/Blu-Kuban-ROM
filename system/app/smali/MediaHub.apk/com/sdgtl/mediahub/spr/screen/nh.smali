.class final Lcom/sdgtl/mediahub/spr/screen/nh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/nc;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/nc;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/nh;->a:Lcom/sdgtl/mediahub/spr/screen/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nh;->a:Lcom/sdgtl/mediahub/spr/screen/nc;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
