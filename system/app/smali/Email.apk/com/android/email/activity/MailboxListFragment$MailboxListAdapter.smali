.class Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final PROJECTION:[Ljava/lang/String;

.field itemBackground:Landroid/graphics/drawable/Drawable;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResourceID:I

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2763
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    .line 2764
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2737
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "parentServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "serverId"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 2760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 2765
    iput p3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mResourceID:I

    .line 2766
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2767
    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mContext:Landroid/content/Context;

    .line 2768
    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Lcom/android/email/activity/MailboxListFragment;->access$100(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 2769
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2774
    if-nez p2, :cond_12e

    .line 2775
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mResourceID:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 2780
    .local v9, view:Landroid/widget/RelativeLayout;
    :goto_f
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getMailboxType()I

    move-result v8

    .line 2781
    .local v8, type:I
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/email/FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v7

    .line 2782
    .local v7, text:Ljava/lang/String;
    if-nez v7, :cond_3b

    .line 2783
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 2786
    :cond_3b
    const v10, 0x7f100162

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2787
    .local v4, nameView:Landroid/widget/TextView;
    if-eqz v7, :cond_49

    .line 2788
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2791
    :cond_49
    const/4 v7, 0x0

    .line 2792
    const v10, 0x7f100166

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2799
    .local v6, statusView:Landroid/widget/TextView;
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2803
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getMailboxUnreadCount()Ljava/lang/String;

    move-result-object v7

    .line 2808
    const v10, 0x7f100009

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2809
    .local v3, folderIcon:Landroid/widget/ImageView;
    const/4 v10, 0x1

    if-eq v8, v10, :cond_7b

    const/4 v10, 0x2

    if-eq v8, v10, :cond_7b

    const/16 v10, 0xc

    if-ne v8, v10, :cond_144

    .line 2811
    :cond_7b
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAllMailboxParentIdList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$2900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getServerId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13c

    .line 2812
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_134

    .line 2813
    const v10, 0x7f0200c2

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2831
    :goto_af
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v10

    if-eqz v10, :cond_153

    .line 2832
    const v10, 0x7f0202ad

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2833
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2840
    :goto_cb
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1800(Lcom/android/email/activity/MailboxListFragment;)I

    move-result v10

    if-ne p1, v10, :cond_d9

    .line 2841
    const v10, 0x7f0203d2

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2844
    :cond_d9
    const v10, 0x7f100164

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2846
    .local v1, countBackground:Landroid/widget/ImageView;
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2848
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getLevel()I

    move-result v10

    if-lez v10, :cond_16b

    .line 2849
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getLevel()I

    move-result v10

    mul-int/lit8 v10, v10, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2855
    :goto_111
    const v10, 0x7f10015f

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2856
    .local v2, dividerLineBottom:Landroid/widget/ImageView;
    const v10, 0x7f100169

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2858
    .local v5, selectedFolderIcon:Landroid/widget/ImageView;
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2859
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2861
    return-object v9

    .end local v1           #countBackground:Landroid/widget/ImageView;
    .end local v2           #dividerLineBottom:Landroid/widget/ImageView;
    .end local v3           #folderIcon:Landroid/widget/ImageView;
    .end local v4           #nameView:Landroid/widget/TextView;
    .end local v5           #selectedFolderIcon:Landroid/widget/ImageView;
    .end local v6           #statusView:Landroid/widget/TextView;
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #type:I
    .end local v9           #view:Landroid/widget/RelativeLayout;
    :cond_12e
    move-object/from16 v9, p2

    .line 2777
    check-cast v9, Landroid/widget/RelativeLayout;

    .restart local v9       #view:Landroid/widget/RelativeLayout;
    goto/16 :goto_f

    .line 2815
    .restart local v3       #folderIcon:Landroid/widget/ImageView;
    .restart local v4       #nameView:Landroid/widget/TextView;
    .restart local v6       #statusView:Landroid/widget/TextView;
    .restart local v7       #text:Ljava/lang/String;
    .restart local v8       #type:I
    :cond_134
    const v10, 0x7f0200be

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_af

    .line 2817
    :cond_13c
    const v10, 0x7f0200c0

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_af

    .line 2820
    :cond_144
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/email/FolderProperties;->getIconIds(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_af

    .line 2836
    :cond_153
    const v10, 0x7f0202ae

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2837
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b000e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_cb

    .line 2851
    .restart local v1       #countBackground:Landroid/widget/ImageView;
    :cond_16b
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_111
.end method
