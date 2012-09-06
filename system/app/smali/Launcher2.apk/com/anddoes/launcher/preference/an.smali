.class final Lcom/anddoes/launcher/preference/an;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1487
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1488
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/anddoes/launcher/preference/an;->a:Landroid/view/LayoutInflater;

    .line 1489
    iput-boolean p3, p0, Lcom/anddoes/launcher/preference/an;->b:Z

    .line 1490
    return-void
.end method

.method private static a(Landroid/preference/PreferenceActivity$Header;)I
    .registers 5
    .parameter

    .prologue
    .line 1453
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080078

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 1454
    const/4 v0, 0x0

    .line 1456
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 1468
    const/4 v0, 0x0

    return v0
.end method

.method public final getItemViewType(I)I
    .registers 3
    .parameter

    .prologue
    .line 1462
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/preference/an;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1463
    invoke-static {v0}, Lcom/anddoes/launcher/preference/an;->a(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1495
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/preference/an;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1496
    invoke-static {v0}, Lcom/anddoes/launcher/preference/an;->a(Landroid/preference/PreferenceActivity$Header;)I

    move-result v4

    .line 1497
    const/4 v2, 0x0

    .line 1499
    if-nez p2, :cond_91

    .line 1500
    new-instance v3, Lcom/anddoes/launcher/preference/ao;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/anddoes/launcher/preference/ao;-><init>(B)V

    .line 1502
    packed-switch v4, :pswitch_data_122

    .line 1517
    :goto_16
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v3

    .line 1524
    :goto_1a
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/an;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v3, p0, Lcom/anddoes/launcher/preference/an;->b:Z

    if-eqz v3, :cond_99

    .line 1525
    const v3, 0x7f060148

    .line 1524
    :goto_25
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1526
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f08007a

    cmp-long v5, v5, v7

    if-nez v5, :cond_9d

    .line 1527
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/an;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060149

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1535
    :goto_43
    packed-switch v4, :pswitch_data_12a

    .line 1558
    :goto_46
    return-object v2

    .line 1504
    :pswitch_47
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/an;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    .line 1505
    const v6, 0x1010208

    .line 1504
    invoke-direct {v2, v1, v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 1506
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/anddoes/launcher/preference/ao;->b:Landroid/widget/TextView;

    goto :goto_16

    .line 1510
    :pswitch_5a
    iget-object v1, p0, Lcom/anddoes/launcher/preference/an;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03001f

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1511
    const v1, 0x7f080002

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/anddoes/launcher/preference/ao;->a:Landroid/widget/ImageView;

    .line 1512
    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/anddoes/launcher/preference/ao;->b:Landroid/widget/TextView;

    .line 1513
    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/anddoes/launcher/preference/ao;->c:Landroid/widget/TextView;

    .line 1514
    const v1, 0x7f080047

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v3, Lcom/anddoes/launcher/preference/ao;->d:Landroid/widget/FrameLayout;

    goto :goto_16

    .line 1520
    :cond_91
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/preference/ao;

    move-object v2, p2

    goto :goto_1a

    .line 1525
    :cond_99
    const v3, 0x7f06024c

    goto :goto_25

    .line 1528
    :cond_9d
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f08007b

    cmp-long v3, v5, v7

    if-nez v3, :cond_b2

    .line 1529
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/an;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f06015a

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    .line 1531
    :cond_b2
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/an;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    .line 1537
    :pswitch_c3
    iget-object v0, v1, Lcom/anddoes/launcher/preference/ao;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_46

    .line 1541
    :pswitch_ca
    iget-object v4, v1, Lcom/anddoes/launcher/preference/ao;->a:Landroid/widget/ImageView;

    iget v5, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1542
    iget-object v4, v1, Lcom/anddoes/launcher/preference/ao;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/an;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1544
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_111

    .line 1545
    iget-object v4, v1, Lcom/anddoes/launcher/preference/ao;->c:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1546
    iget-object v4, v1, Lcom/anddoes/launcher/preference/ao;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    :goto_f3
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f080079

    cmp-long v3, v3, v5

    if-eqz v3, :cond_109

    .line 1551
    iget-boolean v3, p0, Lcom/anddoes/launcher/preference/an;->b:Z

    if-eqz v3, :cond_119

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f08007a

    cmp-long v0, v3, v5

    if-nez v0, :cond_119

    .line 1552
    :cond_109
    iget-object v0, v1, Lcom/anddoes/launcher/preference/ao;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_46

    .line 1548
    :cond_111
    iget-object v3, v1, Lcom/anddoes/launcher/preference/ao;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f3

    .line 1554
    :cond_119
    iget-object v0, v1, Lcom/anddoes/launcher/preference/ao;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_46

    .line 1502
    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_47
        :pswitch_5a
    .end packed-switch

    .line 1535
    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_ca
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 1478
    const/4 v0, 0x3

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    .prologue
    .line 1483
    const/4 v0, 0x1

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 1473
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/preference/an;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
