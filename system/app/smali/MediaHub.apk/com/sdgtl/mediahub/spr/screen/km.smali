.class final Lcom/sdgtl/mediahub/spr/screen/km;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/em;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/em;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/em;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/em;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/em;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/em;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->s(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/km;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->dismissDialog(I)V

    return-void
.end method
