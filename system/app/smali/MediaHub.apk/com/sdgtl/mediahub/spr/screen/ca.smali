.class final Lcom/sdgtl/mediahub/spr/screen/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ca;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ca;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ca;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;I)V

    const v0, 0x7f0d007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ca;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/screen/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->notifyDataSetChanged()V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
