.class final Lcom/sdgtl/mediahub/spr/screen/jq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/jq;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jq;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return v2

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    goto :goto_9

    :pswitch_12
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jq;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;F)V

    goto :goto_9

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method
