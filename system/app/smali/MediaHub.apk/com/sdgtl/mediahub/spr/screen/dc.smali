.class final Lcom/sdgtl/mediahub/spr/screen/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/dc;->a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dc;->a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->a(Lcom/sdgtl/mediahub/spr/screen/MyInformation;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/df;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/screen/df;->b:I

    if-ne v0, v2, :cond_12

    :goto_11
    return-void

    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    packed-switch p3, :pswitch_data_34

    :goto_1a
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/dc;->a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_11

    :pswitch_22
    const-string v1, "account_info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1a

    :pswitch_28
    const-string v1, "change_password"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1a

    :pswitch_2e
    const-string v1, "terms_and_conditions"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1a

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_22
        :pswitch_28
        :pswitch_2e
    .end packed-switch
.end method
