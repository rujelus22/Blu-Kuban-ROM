.class public final Lcom/sdgtl/mediahub/spr/common/ch;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    iput p3, p0, Lcom/sdgtl/mediahub/spr/common/ch;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/sdgtl/mediahub/spr/common/eb;
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->c:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_e

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/ch;->notifyDataSetChanged()V

    return-void

    :cond_e
    if-ne v1, p1, :cond_1f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iput-boolean v2, v0, Lcom/sdgtl/mediahub/spr/common/eb;->c:Z

    goto :goto_1b
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

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
    .registers 13

    const v8, 0x7f0a01d2

    const v7, 0x7f0a005f

    const v6, 0x7f0a0015

    const v5, 0x7f08001b

    const/4 v4, 0x1

    if-nez p2, :cond_f7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cj;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/common/cj;-><init>(Lcom/sdgtl/mediahub/spr/common/ch;)V

    const v0, 0x7f0d0122

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->a:Landroid/widget/TextView;

    const v0, 0x7f0d0123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->b:Landroid/widget/TextView;

    const v0, 0x7f0d0124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->c:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_42
    iget v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->d:I

    if-ne v0, v4, :cond_140

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->e:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->a:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_96
    :goto_96
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/common/cj;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_dd

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_dd
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/common/cj;->c:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->c:Z

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->c:Landroid/widget/RadioButton;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ci;

    invoke-direct {v1, p0, p1}, Lcom/sdgtl/mediahub/spr/common/ci;-><init>(Lcom/sdgtl/mediahub/spr/common/ch;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_f7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cj;

    move-object v1, v0

    goto/16 :goto_42

    :cond_100
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->a:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_96

    :cond_140
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->a:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_96

    :cond_15f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eb;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eb;->a:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cj;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ch;->a:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_96
.end method
