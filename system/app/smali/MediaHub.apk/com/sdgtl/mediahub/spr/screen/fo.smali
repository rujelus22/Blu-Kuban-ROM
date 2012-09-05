.class final Lcom/sdgtl/mediahub/spr/screen/fo;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ec

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    :cond_21
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->m(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    goto :goto_7

    :cond_4a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->n(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    goto :goto_7

    :cond_50
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const-string v2, "meassage_again"

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_70

    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    :cond_70
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const v2, 0x7f0a01b8

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->f:Landroid/os/Handler;

    invoke-static {v1, v0, v4, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_7

    :cond_85
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->m(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->n(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    goto/16 :goto_7

    :cond_ae
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->e:Landroid/os/Handler;

    invoke-static {v1, v0, v3, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_7

    :cond_da
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->m(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->n(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    goto/16 :goto_7

    nop

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
