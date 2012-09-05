.class Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;,
        Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderAdapterNullItem;,
        Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1654
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    .line 1655
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1656
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1666
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 1636
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .registers 4
    .parameter

    .prologue
    .line 1618
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_a

    .line 1619
    const/4 v0, 0x0

    .line 1625
    :goto_9
    return v0

    .line 1620
    :cond_a
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-class v1, Lcom/android/email/activity/setup/GeneralPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1621
    const/4 v0, 0x2

    goto :goto_9

    .line 1622
    :cond_1a
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-eqz v0, :cond_20

    .line 1623
    const/4 v0, 0x1

    goto :goto_9

    .line 1625
    :cond_20
    const/4 v0, 0x3

    goto :goto_9
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 1630
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1631
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1671
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1672
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 1673
    .local v1, headerType:I
    const/4 v3, 0x0

    .line 1676
    .local v3, view:Landroid/view/View;
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    .line 1677
    .local v2, holder:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;
    packed-switch v1, :pswitch_data_1be

    .line 1739
    :goto_14
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1747
    packed-switch v1, :pswitch_data_1ca

    :goto_1a
    move-object v4, v3

    .line 1817
    .end local v3           #view:Landroid/view/View;
    .local v4, view:Ljava/lang/Object;
    :goto_1b
    return-object v4

    .line 1680
    .end local v4           #view:Ljava/lang/Object;
    .restart local v3       #view:Landroid/view/View;
    :pswitch_1c
    sget-boolean v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_31

    .line 1681
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderAdapterNullItem;

    .end local v3           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderAdapterNullItem;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;Landroid/content/Context;)V

    .line 1682
    .restart local v3       #view:Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v4, v3

    .line 1683
    .restart local v4       #view:Ljava/lang/Object;
    goto :goto_1b

    .line 1685
    .end local v4           #view:Ljava/lang/Object;
    :cond_31
    new-instance v3, Landroid/widget/TextView;

    .end local v3           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x1010208

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v3       #view:Landroid/view/View;
    move-object v5, v3

    .line 1689
    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_14

    .line 1693
    :pswitch_44
    sget-boolean v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_59

    .line 1694
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderAdapterNullItem;

    .end local v3           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderAdapterNullItem;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;Landroid/content/Context;)V

    .line 1695
    .restart local v3       #view:Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v4, v3

    .line 1696
    .restart local v4       #view:Ljava/lang/Object;
    goto :goto_1b

    .line 1698
    .end local v4           #view:Ljava/lang/Object;
    :cond_59
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400ac

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1702
    const v5, 0x7f100262

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_14

    .line 1707
    :pswitch_6f
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400ad

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1708
    const v5, 0x7f100004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 1709
    const v5, 0x7f100004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1710
    const v5, 0x7f100003

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->name:Landroid/widget/TextView;

    .line 1711
    const v5, 0x7f100006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->defaultAccount:Landroid/widget/ImageView;

    .line 1713
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_c4

    .line 1714
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const v7, 0x7f0805da

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1715
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_14

    .line 1717
    :cond_c4
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 1724
    :pswitch_d4
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400ab

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1725
    const v5, 0x7f100004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 1726
    const v5, 0x7f100004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1727
    const v5, 0x7f100003

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->name:Landroid/widget/TextView;

    .line 1728
    const v5, 0x7f100261

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 1729
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    .line 1749
    :pswitch_116
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_12e

    .line 1750
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const v7, 0x7f0805fc

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1752
    :cond_12e
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1753
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1765
    :pswitch_13e
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const v7, 0x7f0805da

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1775
    :pswitch_14e
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    if-eqz v0, :cond_174

    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccount:Ljava/lang/Long;
    invoke-static {v7}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$900(Lcom/android/email/activity/setup/AccountSettingsXL;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_174

    .line 1786
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->defaultAccount:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1788
    :cond_174
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1a

    .line 1804
    :pswitch_17d
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v5

    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b6

    .line 1805
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1809
    :goto_194
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;

    invoke-direct {v6, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1810
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1811
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1812
    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;

    invoke-direct {v5, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1a

    .line 1807
    :cond_1b6
    iget-object v5, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_194

    .line 1677
    nop

    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_d4
        :pswitch_44
        :pswitch_6f
    .end packed-switch

    .line 1747
    :pswitch_data_1ca
    .packed-switch 0x0
        :pswitch_116
        :pswitch_17d
        :pswitch_13e
        :pswitch_14e
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 1646
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 1651
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 1641
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
