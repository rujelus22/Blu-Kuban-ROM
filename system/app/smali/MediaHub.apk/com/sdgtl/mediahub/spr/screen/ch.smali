.class final Lcom/sdgtl/mediahub/spr/screen/ch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    const/16 v6, 0x1c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/screen/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eq;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/eq;->b:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/ev;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eq;->d:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    if-eqz v2, :cond_af

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/ep;->c:I

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_af

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eq;->f:Ljava/lang/String;

    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v2, 0x7f0a00f3

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v4

    iget v4, v4, Lcom/sdgtl/mediahub/spr/common/ep;->c:I

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->p(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->e:Ljava/lang/String;

    :goto_9f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "device_detail"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-virtual {v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->showDialog(ILandroid/os/Bundle;)Z

    :cond_ae
    :goto_ae
    return-void

    :cond_af
    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v2, 0x7f0a00f1

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->e:Ljava/lang/String;

    goto :goto_9f

    :cond_c3
    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->d:Ljava/lang/String;

    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v2, 0x7f0a00f2

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->e:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "device_detail"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ch;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-virtual {v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_ae
.end method
