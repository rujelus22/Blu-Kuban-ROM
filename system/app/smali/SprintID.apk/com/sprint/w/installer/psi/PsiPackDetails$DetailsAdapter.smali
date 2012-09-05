.class Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;


# direct methods
.method private constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails;Lcom/sprint/w/installer/psi/PsiPackDetails$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 700
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 807
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 709
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "id"

    .prologue
    .line 714
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;->getType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    .line 720
    .local v0, c:Landroid/content/Context;
    iget-object v11, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v11, v11, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;

    .line 721
    .local v2, item:Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
    const/4 v9, 0x0

    .line 722
    .local v9, v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;->getType()I

    move-result v11

    packed-switch v11, :pswitch_data_e4

    .line 792
    .end local v2           #item:Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
    :goto_14
    return-object v9

    .restart local v2       #item:Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
    :pswitch_15
    move-object/from16 v7, p2

    .line 724
    check-cast v7, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerView;

    .line 725
    .local v7, sv:Lcom/sprint/w/installer/psi/PsiPackDetails$DividerView;
    if-nez v7, :cond_20

    .line 726
    new-instance v7, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerView;

    .end local v7           #sv:Lcom/sprint/w/installer/psi/PsiPackDetails$DividerView;
    invoke-direct {v7, v0}, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerView;-><init>(Landroid/content/Context;)V

    .line 729
    .restart local v7       #sv:Lcom/sprint/w/installer/psi/PsiPackDetails$DividerView;
    :cond_20
    iget-object v11, v7, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerView;->mTitle:Landroid/widget/TextView;

    check-cast v2, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;

    .end local v2           #item:Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
    iget-object v12, v2, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    move-object v9, v7

    .line 731
    goto :goto_14

    .end local v7           #sv:Lcom/sprint/w/installer/psi/PsiPackDetails$DividerView;
    .restart local v2       #item:Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
    :pswitch_2b
    move-object/from16 v10, p2

    .line 734
    check-cast v10, Landroid/widget/TextView;

    .line 735
    .local v10, web:Landroid/widget/TextView;
    if-nez v10, :cond_3f

    .line 736
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030018

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10           #web:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 739
    .restart local v10       #web:Landroid/widget/TextView;
    :cond_3f
    iget-object v11, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    #calls: Lcom/sprint/w/installer/psi/PsiPackDetails;->getPackDescription()Ljava/lang/String;
    invoke-static {v11}, Lcom/sprint/w/installer/psi/PsiPackDetails;->access$600(Lcom/sprint/w/installer/psi/PsiPackDetails;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    move-object v9, v10

    .line 741
    goto :goto_14

    .end local v10           #web:Landroid/widget/TextView;
    :pswitch_4a
    move-object/from16 v8, p2

    .line 743
    check-cast v8, Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;

    .line 744
    .local v8, t:Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;
    if-nez v8, :cond_57

    .line 745
    new-instance v8, Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;

    .end local v8           #t:Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;
    iget-object v11, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {v8, v11, v0}, Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;Landroid/content/Context;)V

    .restart local v8       #t:Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;
    :cond_57
    move-object v1, v2

    .line 747
    check-cast v1, Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;

    .line 748
    .local v1, ctl:Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;
    iget-object v11, v8, Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;->mTitle:Landroid/widget/TextView;

    iget-object v12, v1, Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;->mSecondaryTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    move-object v9, v8

    .line 750
    goto :goto_14

    .end local v1           #ctl:Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;
    .end local v8           #t:Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;
    :pswitch_63
    move-object/from16 v8, p2

    .line 752
    check-cast v8, Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;

    .line 753
    .restart local v8       #t:Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;
    if-nez v8, :cond_70

    .line 754
    new-instance v8, Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;

    .end local v8           #t:Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;
    iget-object v11, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {v8, v11, v0}, Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;Landroid/content/Context;)V

    .restart local v8       #t:Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;
    :cond_70
    move-object v3, v2

    .line 756
    check-cast v3, Lcom/sprint/w/installer/psi/PsiPackDetails$OneLiner;

    .line 757
    .local v3, ol:Lcom/sprint/w/installer/psi/PsiPackDetails$OneLiner;
    iget-object v11, v8, Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;->mTitle:Landroid/widget/TextView;

    iget-object v12, v3, Lcom/sprint/w/installer/psi/PsiPackDetails$OneLiner;->mTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    move-object v9, v8

    .line 759
    goto :goto_14

    .end local v3           #ol:Lcom/sprint/w/installer/psi/PsiPackDetails$OneLiner;
    .end local v8           #t:Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;
    :pswitch_7c
    move-object/from16 v4, p2

    .line 761
    check-cast v4, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoView;

    .line 762
    .local v4, pv:Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoView;
    if-nez v4, :cond_89

    .line 763
    new-instance v4, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoView;

    .end local v4           #pv:Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoView;
    iget-object v11, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {v4, v11, v0}, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoView;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;Landroid/content/Context;)V

    .line 765
    .restart local v4       #pv:Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoView;
    :cond_89
    move-object v9, v4

    .line 766
    goto :goto_14

    .end local v4           #pv:Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoView;
    :pswitch_8b
    move-object/from16 v6, p2

    .line 768
    check-cast v6, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;

    .line 769
    .local v6, ssv:Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;
    if-nez v6, :cond_98

    .line 770
    new-instance v6, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;

    .end local v6           #ssv:Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;
    iget-object v11, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {v6, v11, v0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;Landroid/content/Context;)V

    .restart local v6       #ssv:Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;
    :cond_98
    move-object v5, v2

    .line 772
    check-cast v5, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;

    .line 773
    .local v5, ssi:Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;
    invoke-virtual {v6, v5}, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->setTag(Ljava/lang/Object;)V

    .line 774
    iget-object v11, v5, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl1:Ljava/lang/String;

    if-eqz v11, :cond_d5

    iget-object v11, v5, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl1:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_d5

    .line 775
    iget-object v11, v6, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->mImage1:Landroid/widget/ImageView;

    iget-object v12, v5, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mShortcut1Clicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    iget-object v11, v6, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->mImage1:Landroid/widget/ImageView;

    iget-object v12, v5, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl1:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 782
    :goto_b8
    iget-object v11, v5, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl2:Ljava/lang/String;

    if-eqz v11, :cond_dd

    iget-object v11, v5, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl2:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_dd

    .line 783
    iget-object v11, v6, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->mImage2:Landroid/widget/ImageView;

    iget-object v12, v5, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mShortcut2Clicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    iget-object v11, v6, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->mImage2:Landroid/widget/ImageView;

    iget-object v12, v5, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;->mUrl2:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 789
    :goto_d2
    move-object v9, v6

    goto/16 :goto_14

    .line 780
    :cond_d5
    iget-object v11, v6, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->mImage1:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b8

    .line 786
    :cond_dd
    iget-object v11, v6, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;->mImage2:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d2

    .line 722
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_15
        :pswitch_2b
        :pswitch_4a
        :pswitch_7c
        :pswitch_8b
        :pswitch_63
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 802
    const/4 v0, 0x6

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 812
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;->getType()I

    move-result v0

    .line 813
    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    :cond_17
    const/4 v1, 0x1

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method
