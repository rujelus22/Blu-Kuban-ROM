.class final Lcom/sdgtl/mediahub/spr/screen/ic;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ce

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    :cond_39
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const-string v1, "meassage_again"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_73
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v2, 0x7f0a01b8

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->e:Landroid/os/Handler;

    invoke-static {v1, v0, v4, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_7

    :cond_88
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/common/di;)V

    goto/16 :goto_7

    :cond_95
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->d:Landroid/os/Handler;

    invoke-static {v1, v0, v3, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_7

    :cond_c1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ic;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/common/di;)V

    goto/16 :goto_7

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
