.class final Lcom/mobfox/video/sdk/aj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/aj;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_30

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/mobfox/video/sdk/aj;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobfox/video/sdk/aj;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/aj;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->b(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/ci;

    move-result-object v1

    const/16 v2, -0x12

    invoke-virtual {v1, v2}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :pswitch_data_2a
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
