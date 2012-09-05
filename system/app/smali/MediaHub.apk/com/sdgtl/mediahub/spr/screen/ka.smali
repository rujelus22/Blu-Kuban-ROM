.class final Lcom/sdgtl/mediahub/spr/screen/ka;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/ka;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/ka;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03003c

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/sdgtl/mediahub/spr/screen/kd;

    invoke-direct {v5, p0}, Lcom/sdgtl/mediahub/spr/screen/kd;-><init>(Lcom/sdgtl/mediahub/spr/screen/ka;)V

    const v1, 0x7f0d00e7

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0081

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0d00e8

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->c:Landroid/widget/ImageView;

    const v1, 0x7f0d00e9

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->d:Landroid/widget/ImageView;

    const v1, 0x7f0d0004

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->e:Landroid/widget/TextView;

    const v1, 0x7f0d00ea

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->f:Landroid/widget/TextView;

    const v1, 0x7f0d0083

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->h:Landroid/widget/Button;

    const v1, 0x7f0d0082

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->g:Landroid/widget/Button;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->h:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->g:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f9

    const/4 v1, 0x0

    :goto_8a
    iget-object v6, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_fb

    const/4 v2, -0x2

    :goto_9a
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    packed-switch v3, :pswitch_data_1ae

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->c:Landroid/widget/ImageView;

    const v2, 0x7f020182

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->h:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_b9
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->C(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v1

    if-ne v1, p1, :cond_c7

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c7
    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dn;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->D(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v1

    if-ne v1, p1, :cond_1a0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->E(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Z

    move-result v1

    if-eqz v1, :cond_192

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Z)V

    :goto_e4
    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->g:Landroid/widget/Button;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kb;

    invoke-direct {v2, p0, p1}, Lcom/sdgtl/mediahub/spr/screen/kb;-><init>(Lcom/sdgtl/mediahub/spr/screen/ka;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->h:Landroid/widget/Button;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kc;

    invoke-direct {v2, p0, p1, v0}, Lcom/sdgtl/mediahub/spr/screen/kc;-><init>(Lcom/sdgtl/mediahub/spr/screen/ka;ILcom/sdgtl/mediahub/spr/common/dn;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v4

    :cond_f9
    const/4 v1, 0x1

    goto :goto_8a

    :cond_fb
    const/4 v2, -0x1

    goto :goto_9a

    :pswitch_fd
    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->c:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dn;->e:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "************"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/dn;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->h:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b9

    :pswitch_128
    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->c:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dn;->e:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->h:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_b9

    :pswitch_13f
    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->c:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dn;->e:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ka;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-wide v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    invoke-static {v3, v6, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", EXP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/dn;->j:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    const-wide/16 v6, 0x0

    cmpg-double v1, v1, v6

    if-gtz v1, :cond_18a

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->h:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_b9

    :cond_18a
    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->h:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_b9

    :cond_192
    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->e:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->e:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_e4

    :cond_1a0
    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->e:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/screen/kd;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_e4

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_128
        :pswitch_13f
    .end packed-switch
.end method
