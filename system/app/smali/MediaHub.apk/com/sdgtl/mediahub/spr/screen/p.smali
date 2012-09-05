.class final Lcom/sdgtl/mediahub/spr/screen/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->dismissDialog(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    packed-switch p2, :pswitch_data_6c

    :cond_13
    :goto_13
    return-void

    :pswitch_14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->d:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_13

    :cond_2e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    packed-switch p2, :pswitch_data_72

    goto :goto_13

    :pswitch_3b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/fk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    :pswitch_51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/p;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->d:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_13

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_51
    .end packed-switch
.end method
