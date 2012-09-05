.class public final Lcom/sdgtl/mediahub/spr/common/ce;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/ce;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/sdgtl/mediahub/spr/common/eb;
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->c:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    goto :goto_b

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final a(I)V
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_e

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/ce;->notifyDataSetChanged()V

    return-void

    :cond_e
    if-ne v1, p1, :cond_1f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sdgtl/mediahub/spr/common/eb;->c:Z

    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iput-boolean v2, v0, Lcom/sdgtl/mediahub/spr/common/eb;->c:Z

    goto :goto_1b
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const v4, 0x7f08001b

    if-nez p2, :cond_ba

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cg;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/common/cg;-><init>(Lcom/sdgtl/mediahub/spr/common/ce;)V

    const v0, 0x7f0d0122

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cg;->a:Landroid/widget/TextView;

    const v0, 0x7f0d0123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cg;->b:Landroid/widget/TextView;

    const v0, 0x7f0d0124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cg;->c:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_38
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->a:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cg;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ce;->a:Landroid/content/Context;

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_58
    :goto_58
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cg;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ce;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/common/cg;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a0

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cg;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ce;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cg;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ce;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a0
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/common/cg;->c:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->c:Z

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cg;->c:Landroid/widget/RadioButton;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cf;

    invoke-direct {v1, p0, p1}, Lcom/sdgtl/mediahub/spr/common/cf;-><init>(Lcom/sdgtl/mediahub/spr/common/ce;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_ba
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cg;

    move-object v1, v0

    goto/16 :goto_38

    :cond_c3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->a:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cg;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ce;->a:Landroid/content/Context;

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_58

    :cond_e5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ce;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->a:Ljava/lang/String;

    const-string v2, "09"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cg;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ce;->a:Landroid/content/Context;

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_58
.end method
