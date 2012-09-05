.class public final Lcom/sdgtl/mediahub/spr/screen/cw;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/sdgtl/mediahub/spr/common/ep;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->f:Z

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/cw;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->e:I

    return v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/cw;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->d:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/common/ep;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    return-object v0
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/cw;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->e:I

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/cw;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->d:I

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/cw;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sdgtl/mediahub/spr/common/ep;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/cw;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(Lcom/sdgtl/mediahub/spr/common/ep;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->f:Z

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/cw;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    if-eqz v0, :cond_199

    if-eqz p2, :cond_e

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->f:Z

    if-eqz v0, :cond_19a

    :cond_e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/cz;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/cz;-><init>(Lcom/sdgtl/mediahub/spr/screen/cw;)V

    const v0, 0x7f0d007e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0081

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0d007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->c:Landroid/widget/TextView;

    const v0, 0x7f0d0080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->d:Landroid/widget/TextView;

    const v0, 0x7f0d0083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->f:Landroid/widget/Button;

    const v0, 0x7f0d0082

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->e:Landroid/widget/Button;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->f:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->e:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setFocusable(Z)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_6c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/eq;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eq;->d:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v5, 0x7f0a00db

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/eq;->g:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->e:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->f:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_db
    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eq;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bf

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_ff
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_104
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->E(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)I

    move-result v2

    if-ne v2, p1, :cond_1ee

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->F(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2, v6}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Z)V

    :goto_119
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->f:Landroid/widget/Button;

    const v3, 0x7f0a00d9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    if-eqz v2, :cond_1fb

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1fb

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->c:Lcom/sdgtl/mediahub/spr/common/ep;

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/ep;->c:I

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1fb

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->f:Ljava/lang/String;

    const-string v2, "N"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fb

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->f:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z

    move-result v0

    if-eqz v0, :cond_185

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v2, 0x7f0a0050

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/ep;->c:I

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->p(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->f:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_185
    :goto_185
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->f:Landroid/widget/Button;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/cx;

    invoke-direct {v2, p0, p1}, Lcom/sdgtl/mediahub/spr/screen/cx;-><init>(Lcom/sdgtl/mediahub/spr/screen/cw;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->e:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/cy;

    invoke-direct {v1, p0, p1}, Lcom/sdgtl/mediahub/spr/screen/cy;-><init>(Lcom/sdgtl/mediahub/spr/screen/cw;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_199
    return-object p2

    :cond_19a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/cz;

    iput-boolean v6, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->f:Z

    move-object v1, v0

    goto/16 :goto_6c

    :cond_1a5
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v4, 0x7f0a00e8

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->e:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->f:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_db

    :cond_1bf
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/cw;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eq;->d:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_104

    :cond_1e1
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->c:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_119

    :cond_1ee
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->c:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_119

    :cond_1fb
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/cz;->f:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_185
.end method
