.class final Lcom/sdgtl/mediahub/spr/screen/jm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/jm;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jm;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jm;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    const v0, 0x7f0d0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jm;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/screen/ka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->notifyDataSetChanged()V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
