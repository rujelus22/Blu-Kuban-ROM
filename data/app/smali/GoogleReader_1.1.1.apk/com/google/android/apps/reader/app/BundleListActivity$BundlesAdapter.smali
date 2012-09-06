.class Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;
.super Landroid/widget/BaseAdapter;
.source "BundleListActivity.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/BundleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BundlesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$BundleFilter;,
        Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$SubscriptionsObserver;
    }
.end annotation


# instance fields
.field private final mBundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private mFilterPositions:Landroid/util/SparseIntArray;

.field private final mObserver:Landroid/database/DataSetObserver;

.field private final mPositionForSection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSectionForPosition:[I

.field private final mSections:[Ljava/lang/Object;

.field private mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 154
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 155
    new-instance v0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$SubscriptionsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$SubscriptionsObserver;-><init>(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;Lcom/google/android/apps/reader/app/BundleListActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/google/android/apps/reader/res/ReaderResources;->getBundles(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mBundles:Ljava/util/List;

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mBundles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mPositionForSection:Ljava/util/ArrayList;

    .line 161
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSectionForPosition:[I

    move v3, v6

    .line 162
    :goto_2e
    if-ge v3, v1, :cond_7d

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mBundles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    .line 164
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7a

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_46
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 168
    :cond_61
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mPositionForSection:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_6d
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSectionForPosition:[I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 162
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2e

    .line 165
    :cond_7a
    const-string v0, ""

    goto :goto_46

    .line 173
    :cond_7d
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSections:[Ljava/lang/Object;

    .line 174
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mBundles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    return-object p1
.end method

.method private getBundleTitle(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_a

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 207
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mBundles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubscriptions(I)Ljava/util/List;
    .registers 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_a

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 200
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mBundles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getData()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->getSubscriptionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeSubscriptions(Lcom/google/android/apps/reader/widget/SubscriptionsQuery;)V
    .registers 4
    .parameter "subscriptions"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    if-eqz v0, :cond_b

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 180
    :cond_b
    iput-object p1, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    if-eqz v0, :cond_18

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 184
    :cond_18
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mBundles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_c

    .line 296
    new-instance v0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$BundleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$BundleFilter;-><init>(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;Lcom/google/android/apps/reader/app/BundleListActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilter:Landroid/widget/Filter;

    .line 298
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 3
    .parameter "position"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_a

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 193
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mBundles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->getItem(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_a

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 231
    :cond_a
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "section"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mPositionForSection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_a

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 281
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSectionForPosition:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 239
    .local v9, res:Landroid/content/res/Resources;
    move-object/from16 v15, p2

    .line 240
    .local v15, view:Landroid/view/View;
    if-nez v15, :cond_20

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 242
    .local v6, context:Landroid/content/Context;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 243
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v16, 0x7f03000c

    const/16 v17, 0x0

    move-object v0, v8

    move/from16 v1, v16

    move-object/from16 v2, p3

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 245
    .end local v6           #context:Landroid/content/Context;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    :cond_20
    const v16, 0x1020014

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 246
    .local v12, text1:Landroid/widget/TextView;
    const v16, 0x1020015

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 248
    .local v13, text2:Landroid/widget/TextView;
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->getBundleTitle(I)Ljava/lang/String;

    move-result-object v14

    .line 249
    .local v14, title:Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->getSubscriptions(I)Ljava/util/List;

    move-result-object v11

    .line 252
    .local v11, subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 253
    .local v7, feedCount:I
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object v4, v0

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v16

    .line 256
    .local v4, args:[Ljava/lang/Object;
    const v16, 0x7f0e0002

    move-object v0, v9

    move/from16 v1, v16

    move v2, v7

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->containsAll(Ljava/lang/Iterable;)Z

    move-result v16

    if-eqz v16, :cond_8a

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 261
    .local v10, subscribed:Z
    :goto_7d
    const v16, 0x1020001

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 262
    .local v5, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v5, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    return-object v15

    .line 258
    .end local v5           #checkbox:Landroid/widget/CheckBox;
    .end local v10           #subscribed:Z
    :cond_8a
    const/16 v16, 0x0

    move/from16 v10, v16

    goto :goto_7d
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
