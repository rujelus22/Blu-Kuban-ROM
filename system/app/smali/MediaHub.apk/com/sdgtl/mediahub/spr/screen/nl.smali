.class final Lcom/sdgtl/mediahub/spr/screen/nl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/nl;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nl;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->finish()V

    const/4 v0, 0x0

    return v0
.end method
