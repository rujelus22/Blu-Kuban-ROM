.class final Lcom/sdgtl/mediahub/spr/screen/oh;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->d:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->e:I

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/oh;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    return-object v0
.end method


# virtual methods
.method public final a(I)D
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    return-wide v0
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_14
    return-void
.end method

.method public final a(ID)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iput-wide p2, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(I)D
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    return-wide v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->d:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->e:I

    return v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

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
    .registers 14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/ok;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/ok;-><init>(Lcom/sdgtl/mediahub/spr/screen/oh;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f03004b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0d0119

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const v1, 0x7f0d00e8

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->b:Landroid/widget/ImageView;

    const v1, 0x7f0d00e9

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->c:Landroid/widget/ImageView;

    const v1, 0x7f0d0004

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->d:Landroid/widget/TextView;

    const v1, 0x7f0d011a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const v1, 0x7f0d00ea

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const v1, 0x7f0d011b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->g:Landroid/widget/TextView;

    const v1, 0x7f0d011c

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->j:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d00ae

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->h:Landroid/widget/TextView;

    const v1, 0x7f0d011d

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->i:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->i:Landroid/widget/TextView;

    new-instance v4, Lcom/sdgtl/mediahub/spr/screen/oi;

    invoke-direct {v4, p0, v0}, Lcom/sdgtl/mediahub/spr/screen/oi;-><init>(Lcom/sdgtl/mediahub/spr/screen/oh;Lcom/sdgtl/mediahub/spr/common/dn;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->d:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/dn;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v0, :cond_c3

    packed-switch v4, :pswitch_data_374

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->b:Landroid/widget/ImageView;

    const v5, 0x7f020182

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c3
    :goto_c3
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->R(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I

    move-result v1

    if-ne v1, p1, :cond_d1

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->c:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d1
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v1

    if-eqz v1, :cond_275

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->h:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->d:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_265

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->j:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->i:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_f8
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_10f

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10f

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->i:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_10f
    :goto_10f
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->d:I

    if-nez v1, :cond_2fd

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/dn;->b(Z)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/4 v0, 0x3

    if-ne v4, v0, :cond_2e1

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v4, 0x7

    invoke-static {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v0

    if-eqz v0, :cond_15f

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_15f
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_166
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_16d
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/oj;

    invoke-direct {v1, p0, p1}, Lcom/sdgtl/mediahub/spr/screen/oj;-><init>(Lcom/sdgtl/mediahub/spr/screen/oh;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    :pswitch_184
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->b:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/dn;->e:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-static {v1, v5, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "************"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    if-lez v1, :cond_c3

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->e:I

    goto/16 :goto_c3

    :pswitch_1b4
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->b:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/dn;->e:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-static {v1, v5, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->d:I

    goto/16 :goto_c3

    :pswitch_1c7
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->b:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/dn;->e:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-static {v1, v5, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", EXP "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->j:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v1

    if-eqz v1, :cond_221

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-wide v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    invoke-static {v5, v6, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    :cond_221
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/common/dn;->c()Z

    move-result v1

    if-eqz v1, :cond_250

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-wide v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    iget-wide v8, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v6, v7, v8, v9}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(DD)D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    :cond_250
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-wide v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    invoke-static {v5, v6, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    :cond_265
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->j:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->i:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f8

    :cond_275
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->i:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/common/dn;->c()Z

    move-result v1

    if-eqz v1, :cond_2c4

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->h:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->h:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-wide v7, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v6, v7, v8}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->j:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_10f

    :cond_2c4
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->h:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->h:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->j:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_10f

    :cond_2e1
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_166

    :cond_2fd
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/dn;->b(Z)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->d:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    packed-switch v4, :pswitch_data_37e

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_317
    :goto_317
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_16d

    :pswitch_326
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_317

    :pswitch_334
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/oh;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_317

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->a:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/dn;->b(Z)V

    goto :goto_317

    :pswitch_35b
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/ok;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_317

    :pswitch_data_374
    .packed-switch 0x1
        :pswitch_184
        :pswitch_1b4
        :pswitch_1c7
    .end packed-switch

    :pswitch_data_37e
    .packed-switch 0x1
        :pswitch_326
        :pswitch_334
        :pswitch_35b
    .end packed-switch
.end method

.method public final notifyDataSetChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
