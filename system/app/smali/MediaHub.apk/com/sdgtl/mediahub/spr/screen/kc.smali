.class final Lcom/sdgtl/mediahub/spr/screen/kc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/ka;

.field private final synthetic b:I

.field private final synthetic c:Lcom/sdgtl/mediahub/spr/common/dn;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/ka;ILcom/sdgtl/mediahub/spr/common/dn;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->b:I

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->c:Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->b:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->i(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ke;->d:Lcom/sdgtl/mediahub/spr/screen/ke;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Lcom/sdgtl/mediahub/spr/screen/ke;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->c:Lcom/sdgtl/mediahub/spr/common/dn;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_46
    return-void

    :cond_47
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->c:Lcom/sdgtl/mediahub/spr/common/dn;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kc;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->showDialog(I)V

    goto :goto_46
.end method
