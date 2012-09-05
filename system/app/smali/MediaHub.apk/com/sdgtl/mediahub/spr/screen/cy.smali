.class final Lcom/sdgtl/mediahub/spr/screen/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/cw;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/cw;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->b:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/cw;->b(Lcom/sdgtl/mediahub/spr/screen/cw;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/cw;->a(Lcom/sdgtl/mediahub/spr/screen/cw;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/cw;->a(Lcom/sdgtl/mediahub/spr/screen/cw;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/cw;->a(Lcom/sdgtl/mediahub/spr/screen/cw;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cy;->a:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->showDialog(I)V

    return-void
.end method
