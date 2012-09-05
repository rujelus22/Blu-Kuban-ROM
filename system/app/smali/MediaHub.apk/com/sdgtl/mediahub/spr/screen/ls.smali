.class final Lcom/sdgtl/mediahub/spr/screen/ls;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_7a

    :cond_8
    :goto_8
    :pswitch_8
    return v4

    :pswitch_9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;F)V

    goto :goto_8

    :pswitch_13
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->b(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->c(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;Z)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eu;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/eu;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/eu;->F:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/screen/md;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/md;->a(Ljava/util/ArrayList;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "start_num"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->e(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "end_num"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->f(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ls;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->g(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x21

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;J)V

    goto :goto_8

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method
