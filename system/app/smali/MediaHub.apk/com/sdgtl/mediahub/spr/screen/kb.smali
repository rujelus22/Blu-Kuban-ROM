.class final Lcom/sdgtl/mediahub/spr/screen/kb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/ka;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/ka;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->b:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->g(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "method_type_key"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kb;->a:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->showDialog(ILandroid/os/Bundle;)Z

    return-void
.end method
