.class final Lcom/sdgtl/mediahub/spr/screen/ob;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ob;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ob;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->finish()V

    return-void
.end method
