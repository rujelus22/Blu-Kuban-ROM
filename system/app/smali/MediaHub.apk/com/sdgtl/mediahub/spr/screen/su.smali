.class public final Lcom/sdgtl/mediahub/spr/screen/su;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/su;)Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    return-object v0
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    if-ltz p1, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->b:Lcom/sdgtl/mediahub/spr/common/ct;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ct;->b:I

    return v0
.end method

.method public final getChildTypeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15

    const/16 v8, 0x8

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->b:Lcom/sdgtl/mediahub/spr/common/ct;

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ct;->b:I

    packed-switch v1, :pswitch_data_13a

    :goto_12
    return-object p4

    :pswitch_13
    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ct;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/sdgtl/mediahub/spr/common/el;

    if-nez p4, :cond_10b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ta;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ta;-><init>(Lcom/sdgtl/mediahub/spr/screen/su;)V

    const v0, 0x7f0d0129

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/ta;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0042

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/ta;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0045

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/ta;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0048

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/ta;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0044

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/ta;->e:Landroid/widget/TextView;

    const v0, 0x7f0d0047

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/ta;->f:Landroid/widget/TextView;

    const v0, 0x7f0d012b

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/ta;->g:Landroid/widget/TextView;

    const v0, 0x7f0d00b2

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/ta;->h:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    :goto_85
    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->a:Ljava/lang/String;

    if-eqz v0, :cond_114

    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_114

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v1, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->e:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/sdgtl/mediahub/spr/common/el;->a:Ljava/lang/String;

    const-string v3, "02"

    const-string v4, "genre"

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_9e
    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->b:Ljava/lang/String;

    if-eqz v0, :cond_11a

    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v1, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->f:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/sdgtl/mediahub/spr/common/el;->b:Ljava/lang/String;

    const-string v3, "02"

    const-string v4, "people"

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_b7
    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->c:Ljava/lang/String;

    if-eqz v0, :cond_120

    iget-object v0, v6, Lcom/sdgtl/mediahub/spr/common/el;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_120

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v1, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->g:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/sdgtl/mediahub/spr/common/el;->c:Ljava/lang/String;

    const-string v3, "02"

    const-string v4, "people"

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_d0
    iget-object v0, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->h:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/sdgtl/mediahub/spr/common/el;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_126

    iget-object v1, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->a:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_12

    :cond_10b
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/ta;

    move-object v7, v0

    goto/16 :goto_85

    :cond_114
    iget-object v0, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9e

    :cond_11a
    iget-object v0, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b7

    :cond_120
    iget-object v0, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d0

    :cond_126
    iget-object v0, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->a:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, v7, Lcom/sdgtl/mediahub/spr/screen/ta;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_12

    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method

.method public final getChildrenCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->b:Lcom/sdgtl/mediahub/spr/common/ct;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    if-ltz p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->a:Ljava/lang/Object;

    :goto_20
    return-object v0

    :cond_21
    new-instance v0, Lcom/sdgtl/mediahub/spr/common/da;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/da;-><init>()V

    goto :goto_20
.end method

.method public final getGroupCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    if-ltz p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

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

    const/4 v0, 0x3

    return v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/da;->c:I

    packed-switch v1, :pswitch_data_e8

    :goto_28
    return-object p3

    :pswitch_29
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/su;->b:Landroid/view/LayoutInflater;

    const v4, 0x7f030053

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v4, Lcom/sdgtl/mediahub/spr/screen/sx;

    invoke-direct {v4, p0}, Lcom/sdgtl/mediahub/spr/screen/sx;-><init>(Lcom/sdgtl/mediahub/spr/screen/su;)V

    const v1, 0x7f0d0127

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/sdgtl/mediahub/spr/screen/sx;->a:Landroid/widget/TextView;

    const v1, 0x7f0d0128

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/sdgtl/mediahub/spr/screen/sx;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v4, Lcom/sdgtl/mediahub/spr/screen/sx;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lcom/sdgtl/mediahub/spr/screen/sx;->b:Landroid/widget/ImageView;

    if-eqz p2, :cond_6f

    const v0, 0x7f02010c

    :goto_60
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p3, v2, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_28

    :cond_6f
    const v0, 0x7f02010d

    goto :goto_60

    :cond_73
    invoke-virtual {p3, v3, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_28

    :pswitch_77
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/su;->b:Landroid/view/LayoutInflater;

    const v4, 0x7f03001a

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v4, Lcom/sdgtl/mediahub/spr/screen/sy;

    invoke-direct {v4, p0}, Lcom/sdgtl/mediahub/spr/screen/sy;-><init>(Lcom/sdgtl/mediahub/spr/screen/su;)V

    const v1, 0x7f0d003d

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/sdgtl/mediahub/spr/screen/sy;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sv;

    invoke-direct {v1, p0, v0}, Lcom/sdgtl/mediahub/spr/screen/sv;-><init>(Lcom/sdgtl/mediahub/spr/screen/su;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sw;

    invoke-direct {v1, p0, v0}, Lcom/sdgtl/mediahub/spr/screen/sw;-><init>(Lcom/sdgtl/mediahub/spr/screen/su;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, v4, Lcom/sdgtl/mediahub/spr/screen/sy;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/su;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {p3, v2, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_28

    :cond_bb
    invoke-virtual {p3, v3, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_28

    :pswitch_c0
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/su;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030050

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/sz;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/sz;-><init>(Lcom/sdgtl/mediahub/spr/screen/su;)V

    const v1, 0x7f0d0125

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/sz;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/sz;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28

    nop

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_29
        :pswitch_77
        :pswitch_c0
    .end packed-switch
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
