.class final Lcom/sdgtl/mediahub/spr/screen/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/bn;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bn;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->k(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bn;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "close_detail_view"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    :cond_1c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bn;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->finish()V

    goto :goto_6
.end method
