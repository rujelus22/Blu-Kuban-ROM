.class final Lcom/sdgtl/mediahub/spr/screen/lw;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/lw;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lw;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lw;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->h(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lw;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lw;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    const v2, 0x7f0a01a5

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method