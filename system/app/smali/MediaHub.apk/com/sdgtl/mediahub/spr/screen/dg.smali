.class final Lcom/sdgtl/mediahub/spr/screen/dg;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->c:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/df;

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/df;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/screen/df;->b:I

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/df;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/screen/df;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    if-nez p2, :cond_3d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030033

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/di;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/di;-><init>(Lcom/sdgtl/mediahub/spr/screen/dg;)V

    const v0, 0x7f0d00b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/di;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2d
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/screen/di;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/df;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/df;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3c
    return-object p2

    :cond_3d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/di;

    goto :goto_2d

    :cond_44
    if-nez p2, :cond_73

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030032

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/dh;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/dh;-><init>(Lcom/sdgtl/mediahub/spr/screen/dg;)V

    const v0, 0x7f0d00b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/dh;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_63
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/screen/dh;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/df;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/df;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c

    :cond_73
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/dh;

    goto :goto_63
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
