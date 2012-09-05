.class final Lcom/sdgtl/mediahub/spr/screen/ky;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sdgtl/mediahub/spr/common/en;)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_13

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/ky;->notifyDataSetChanged()V

    return-void

    :cond_13
    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kz;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/kz;-><init>(Lcom/sdgtl/mediahub/spr/screen/ky;)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/em;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/em;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/kz;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/em;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/em;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/kz;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/em;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/em;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/kz;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_4e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/la;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/la;-><init>(Lcom/sdgtl/mediahub/spr/screen/ky;)V

    const v0, 0x7f0d0003

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/la;->a:Landroid/widget/ImageView;

    const v0, 0x7f0d0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/la;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_4d

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/la;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/kz;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/kz;->c:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v2, v0, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/la;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ky;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/kz;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/kz;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4d
    return-object p2

    :cond_4e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/la;

    move-object v1, v0

    goto :goto_2a
.end method
