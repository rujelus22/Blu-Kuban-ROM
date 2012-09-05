.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAdapter"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSeparators:Z

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1519
    .local p3, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;>;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    .line 1520
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1521
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mContext:Landroid/content/Context;

    .line 1522
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1523
    iput-object p3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSections:Ljava/util/ArrayList;

    .line 1524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSeparators:Z

    .line 1525
    return-void
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .registers 4
    .parameter "textView"
    .parameter "maxLines"

    .prologue
    const/4 v0, 0x1

    .line 1823
    if-ne p2, v0, :cond_c

    .line 1824
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1825
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1831
    :goto_b
    return-void

    .line 1827
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1828
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1829
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_b
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V
    .registers 15
    .parameter "view"
    .parameter "entry"

    .prologue
    const/4 v9, 0x2

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 1659
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;

    .line 1660
    .local v6, views:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;
    const v7, 0x7f0d018b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1663
    .local v2, dividerView:Landroid/view/View;
    iget-boolean v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isFirst:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_fa

    .line 1665
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1667
    const-string v7, "vnd.android.cursor.item/phone_v2"

    iget-object v8, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1668
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v8, 0x7f0a0049

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1669
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1670
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1705
    :goto_35
    const-string v7, "vnd.android.cursor.item/im"

    iget-object v8, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_106

    .line 1706
    iget-object v4, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    .line 1707
    .local v4, label:Landroid/widget/TextView;
    iget v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v4, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1708
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    iget-object v0, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    .line 1712
    .local v0, data:Landroid/widget/TextView;
    if-eqz v0, :cond_67

    .line 1713
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 1714
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    :goto_62
    iget v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    invoke-direct {p0, v0, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1721
    :cond_67
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1722
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1723
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1820
    .end local v0           #data:Landroid/widget/TextView;
    :goto_72
    return-void

    .line 1671
    .end local v4           #label:Landroid/widget/TextView;
    :cond_73
    const-string v7, "vnd.android.cursor.item/email_v2"

    iget-object v8, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 1672
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v8, 0x7f0a014b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1673
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1674
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    .line 1675
    :cond_90
    const-string v7, "vnd.android.cursor.item/im"

    iget-object v8, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 1676
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v8, 0x7f0a004b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1677
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1678
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    .line 1679
    :cond_ad
    const-string v7, "vnd.android.cursor.item/sip_address"

    iget-object v8, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 1680
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v8, 0x7f0a0044

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1681
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1682
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 1685
    :cond_cb
    const/4 v3, -0x1

    .line 1687
    .local v3, firtEntryType:I
    const-string v7, "vnd.android.cursor.item/organization"

    iget-object v8, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f3

    .line 1688
    const/4 v3, 0x1

    .line 1693
    :goto_d7
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I
    invoke-static {v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$800(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)I

    move-result v7

    if-ne v7, v3, :cond_f5

    .line 1694
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v8, 0x7f0a004d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1695
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1696
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 1690
    :cond_f3
    const/4 v3, 0x0

    goto :goto_d7

    .line 1698
    :cond_f5
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 1703
    .end local v3           #firtEntryType:I
    :cond_fa
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 1716
    .restart local v0       #data:Landroid/widget/TextView;
    .restart local v4       #label:Landroid/widget/TextView;
    :cond_ff
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 1724
    .end local v0           #data:Landroid/widget/TextView;
    .end local v4           #label:Landroid/widget/TextView;
    :cond_106
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_180

    .line 1726
    iget-object v4, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    .line 1727
    .restart local v4       #label:Landroid/widget/TextView;
    iget v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v4, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1728
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1731
    iget-object v0, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    .line 1732
    .restart local v0       #data:Landroid/widget/TextView;
    if-eqz v0, :cond_158

    .line 1733
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_133

    .line 1734
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    :cond_133
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #calls: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setDateData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;
    invoke-static {v7, p2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$900(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;

    move-result-object v1

    .line 1741
    .local v1, dateData:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I
    invoke-static {v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)I

    move-result v7

    if-nez v7, :cond_150

    .line 1742
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C
    invoke-static {v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)C

    move-result v7

    packed-switch v7, :pswitch_data_232

    .line 1753
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1757
    :cond_150
    :goto_150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1758
    iget v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    invoke-direct {p0, v0, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1761
    .end local v1           #dateData:Ljava/lang/String;
    :cond_158
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1762
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1763
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_72

    .line 1744
    .restart local v1       #dateData:Ljava/lang/String;
    :pswitch_165
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1745
    goto :goto_150

    .line 1747
    :pswitch_16a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1748
    goto :goto_150

    .line 1750
    :pswitch_175
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1751
    goto :goto_150

    .line 1765
    .end local v0           #data:Landroid/widget/TextView;
    .end local v1           #dateData:Ljava/lang/String;
    .end local v4           #label:Landroid/widget/TextView;
    :cond_180
    const-string v7, "vnd.android.cursor.item/note"

    iget-object v8, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b6

    .line 1767
    iget-object v4, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    .line 1768
    .restart local v4       #label:Landroid/widget/TextView;
    iget v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v4, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1769
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1772
    iget-object v5, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    .line 1773
    .local v5, noteData:Landroid/widget/TextView;
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/16 v8, 0xd

    const/16 v9, 0x20

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1774
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1777
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1778
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_72

    .line 1779
    .end local v4           #label:Landroid/widget/TextView;
    .end local v5           #noteData:Landroid/widget/TextView;
    :cond_1b6
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    iget-object v8, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f6

    .line 1781
    iget-object v4, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    .line 1782
    .restart local v4       #label:Landroid/widget/TextView;
    iget v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v4, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1783
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    iget-object v5, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    .line 1787
    .restart local v5       #noteData:Landroid/widget/TextView;
    if-eqz v5, :cond_1e3

    .line 1788
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f0

    .line 1789
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1795
    :cond_1e3
    :goto_1e3
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1796
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1797
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_72

    .line 1791
    :cond_1f0
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e3

    .line 1800
    .end local v4           #label:Landroid/widget/TextView;
    .end local v5           #noteData:Landroid/widget/TextView;
    :cond_1f6
    iget-object v4, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    .line 1801
    .restart local v4       #label:Landroid/widget/TextView;
    iget v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v4, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1802
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1805
    iget-object v0, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    .line 1806
    .restart local v0       #data:Landroid/widget/TextView;
    if-eqz v0, :cond_21e

    .line 1807
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22b

    .line 1808
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1812
    :goto_219
    iget v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    invoke-direct {p0, v0, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1815
    :cond_21e
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1816
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1817
    iget-object v7, v6, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_72

    .line 1810
    :cond_22b
    iget-object v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_219

    .line 1742
    nop

    :pswitch_data_232
    .packed-switch 0x41
        :pswitch_165
        :pswitch_16a
        :pswitch_175
    .end packed-switch
.end method

.method public final countEntries(Ljava/util/ArrayList;Z)I
    .registers 9
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;Z)I"
        }
    .end annotation

    .prologue
    .line 1548
    .local p1, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    const/4 v0, 0x0

    .line 1549
    .local v0, count:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1550
    .local v2, numSections:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_26

    .line 1551
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1552
    .local v3, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1553
    .local v4, sectionSize:I
    if-eqz p2, :cond_1a

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 1550
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1558
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_17

    .line 1560
    .end local v3           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v4           #sectionSize:I
    :cond_26
    return v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSeparators:Z

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->countEntries(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public final getEntry(Ljava/util/ArrayList;IZ)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    .registers 9
    .parameter
    .parameter "position"
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;IZ)TT;"
        }
    .end annotation

    .prologue
    .line 1529
    .local p1, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1530
    .local v1, numSections:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_2c

    .line 1531
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1532
    .local v2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1533
    .local v3, sectionSize:I
    if-eqz p3, :cond_19

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    .line 1530
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1538
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_26

    .line 1539
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 1543
    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v3           #sectionSize:I
    :goto_25
    return-object v4

    .line 1541
    .restart local v2       #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v3       #sectionSize:I
    :cond_26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr p2, v4

    goto :goto_16

    .line 1543
    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v3           #sectionSize:I
    :cond_2c
    const/4 v4, 0x0

    goto :goto_25
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1844
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1850
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1611
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, p1, v5}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    .line 1617
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    if-eqz p2, :cond_56

    .line 1618
    move-object v1, p2

    .line 1619
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;

    .line 1620
    .local v2, views:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1621
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    :goto_1c
    iput-object v0, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 1642
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$700(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$700(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$700(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 1644
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1649
    :goto_52
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->bindView(Landroid/view/View;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V

    .line 1650
    return-object v1

    .line 1625
    .end local v1           #v:Landroid/view/View;
    .end local v2           #views:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;
    :cond_56
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b5

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1628
    .restart local v1       #v:Landroid/view/View;
    new-instance v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;-><init>()V

    .line 1629
    .restart local v2       #views:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;
    const v3, 0x7f0d01fb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    .line 1630
    const v3, 0x7f0d01fc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    .line 1631
    const v3, 0x7f0d01fd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    .line 1632
    const v3, 0x7f0d01fe

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    .line 1633
    const v3, 0x7f0d00de

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->checkBox:Landroid/widget/CheckBox;

    .line 1634
    const v3, 0x7f0d01fa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    .line 1636
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 1646
    :cond_a9
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_52
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1603
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1604
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 1605
    return-void
.end method

.method public final setSections(Ljava/util/ArrayList;Z)V
    .registers 3
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1569
    .local p1, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;>;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSections:Ljava/util/ArrayList;

    .line 1570
    iput-boolean p2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSeparators:Z

    .line 1571
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->notifyDataSetChanged()V

    .line 1572
    return-void
.end method
