.class final Lcom/sdgtl/mediahub/spr/screen/jl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/jl;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const/16 v4, 0x15

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jl;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jl;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jl;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b()V

    const-string v1, "user_payment_method_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/jl;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->v(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jl;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/jl;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jl;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-virtual {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->dismissDialog(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jl;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->M(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jl;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->v(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->e(Ljava/lang/String;)V

    return-void
.end method
