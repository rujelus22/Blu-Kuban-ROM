.class public final Lcom/sdgtl/mediahub/spr/contentProvider/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V
    .registers 9

    const/4 v2, 0x0

    if-nez p1, :cond_26

    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error Toast Display Featured errCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    :cond_19
    if-nez p2, :cond_2f

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/a;->a()V

    if-nez p4, :cond_2b

    packed-switch p3, :pswitch_data_56

    invoke-static {p0, p5}, Lcom/sdgtl/mediahub/spr/common/a;->h(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :cond_26
    :goto_26
    return-void

    :pswitch_27
    invoke-static {p0, p5}, Lcom/sdgtl/mediahub/spr/common/a;->j(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_26

    :cond_2b
    invoke-static {p0, p4, p5}, Lcom/sdgtl/mediahub/spr/common/a;->d(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_26

    :cond_2f
    if-nez p4, :cond_51

    packed-switch p3, :pswitch_data_5c

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_49

    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_41
    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_26

    :pswitch_45
    invoke-static {p0, p5}, Lcom/sdgtl/mediahub/spr/common/a;->j(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_26

    :cond_49
    const v0, 0x7f0a0118

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_51
    invoke-static {p0, p4, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_26

    nop

    :pswitch_data_56
    .packed-switch 0x9
        :pswitch_27
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x9
        :pswitch_45
    .end packed-switch
.end method
