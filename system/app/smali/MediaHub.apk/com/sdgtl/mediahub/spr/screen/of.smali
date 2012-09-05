.class final Lcom/sdgtl/mediahub/spr/screen/of;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/of;->b:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->d:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    if-nez p2, :cond_9b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/og;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/og;-><init>(Lcom/sdgtl/mediahub/spr/screen/of;)V

    const v0, 0x7f0d0101

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/og;->b:Landroid/widget/TextView;

    const v0, 0x7f0d00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/og;->a:Landroid/widget/TextView;

    const v0, 0x7f0d0100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/og;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_35
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/du;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/du;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/og;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    packed-switch v0, :pswitch_data_146

    :goto_4d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/du;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/du;->c:Ljava/lang/String;

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/du;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/du;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    :cond_6b
    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/og;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    const v3, 0x7f0a0100

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ************"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/du;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/du;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9a
    return-object p2

    :cond_9b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/og;

    move-object v1, v0

    goto :goto_35

    :pswitch_a3
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/og;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    const v3, 0x7f0a00b4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/og;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/du;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/du;->b:D

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4d

    :pswitch_c7
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/og;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/og;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    const v3, 0x7f0a00b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/og;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/du;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/du;->b:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->b:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    move-result-object v0

    iget-wide v6, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->k:D

    add-double/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4d

    :pswitch_fb
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/og;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    const v3, 0x7f0a00b5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/og;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/du;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/du;->b:D

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4d

    :pswitch_120
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/og;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    const v3, 0x7f0a00b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/og;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/of;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/of;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/du;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/du;->b:D

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4d

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_c7
        :pswitch_fb
        :pswitch_120
    .end packed-switch
.end method
