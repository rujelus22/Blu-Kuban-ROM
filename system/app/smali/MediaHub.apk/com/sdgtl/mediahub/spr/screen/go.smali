.class public final Lcom/sdgtl/mediahub/spr/screen/go;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/sdgtl/mediahub/spr/screen/gq;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    if-ltz p1, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->b:Lcom/sdgtl/mediahub/spr/common/ct;

    :goto_28
    return-object v0

    :cond_29
    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ct;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/ct;-><init>()V

    goto :goto_28
.end method

.method public final getChildId(II)J
    .registers 5

    if-ltz p1, :cond_4

    int-to-long v0, p2

    :goto_3
    return-wide v0

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_3
.end method

.method public final getChildType(II)I
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->b:Lcom/sdgtl/mediahub/spr/common/ct;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ct;->b:I

    return v0
.end method

.method public final getChildTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    const/16 v7, 0x8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->b:Lcom/sdgtl/mediahub/spr/common/ct;

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ct;->b:I

    packed-switch v1, :pswitch_data_174

    :goto_11
    return-object p4

    :pswitch_12
    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ct;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/sdgtl/mediahub/spr/common/el;

    if-nez p4, :cond_132

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/gq;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/gq;-><init>(Lcom/sdgtl/mediahub/spr/screen/go;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    const v0, 0x7f0d0129

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    const v0, 0x7f0d0042

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    const v0, 0x7f0d0045

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    const v0, 0x7f0d0048

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    const v0, 0x7f0d0044

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    const v0, 0x7f0d0047

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    const v0, 0x7f0d012b

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    const v0, 0x7f0d00b2

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_97
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    if-nez v0, :cond_13c

    const-string v3, "01"

    const/4 v5, 0x2

    :goto_a4
    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->a:Ljava/lang/String;

    if-eqz v0, :cond_141

    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_141

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->e:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/sdgtl/mediahub/spr/common/el;->a:Ljava/lang/String;

    const-string v4, "genre"

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_bd
    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->b:Ljava/lang/String;

    if-eqz v0, :cond_14a

    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->g:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/sdgtl/mediahub/spr/common/el;->b:Ljava/lang/String;

    const-string v4, "people"

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_d6
    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->c:Ljava/lang/String;

    if-eqz v0, :cond_152

    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_152

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->f:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/sdgtl/mediahub/spr/common/el;->c:Ljava/lang/String;

    const-string v4, "people"

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_ef
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/gq;->h:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/sdgtl/mediahub/spr/common/el;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/gq;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/gq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/screen/gq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_11

    :cond_132
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/gq;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    goto/16 :goto_97

    :cond_13c
    const-string v3, "02"

    const/4 v5, 0x6

    goto/16 :goto_a4

    :cond_141
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/gq;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_bd

    :cond_14a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/gq;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d6

    :cond_152
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/gq;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ef

    :cond_15a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/gq;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/gq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/go;->d:Lcom/sdgtl/mediahub/spr/screen/gq;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/screen/gq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_11

    nop

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method

.method public final getChildrenCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    if-ltz p1, :cond_1d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Lcom/sdgtl/mediahub/spr/common/da;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/da;-><init>()V

    goto :goto_1c
.end method

.method public final getGroupCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getGroupId(I)J
    .registers 4

    if-ltz p1, :cond_4

    int-to-long v0, p1

    :goto_3
    return-wide v0

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_3
.end method

.method public final getGroupType(I)I
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    if-ltz p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->c:I

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public final getGroupTypeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v3, 0x0

    if-nez p3, :cond_6b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/gp;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/gp;-><init>(Lcom/sdgtl/mediahub/spr/screen/go;)V

    const v0, 0x7f0d0127

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/gp;->a:Landroid/widget/TextView;

    const v0, 0x7f0d0128

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/gp;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2b
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/gp;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/gp;->b:Landroid/widget/ImageView;

    if-eqz p2, :cond_73

    const v0, 0x7f02010c

    :goto_43
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/go;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-virtual {p3, v0, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_6a
    return-object p3

    :cond_6b
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/gp;

    move-object v1, v0

    goto :goto_2b

    :cond_73
    const v0, 0x7f02010d

    goto :goto_43

    :cond_77
    invoke-virtual {p3, v1, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6a
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isChildSelectable(II)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
