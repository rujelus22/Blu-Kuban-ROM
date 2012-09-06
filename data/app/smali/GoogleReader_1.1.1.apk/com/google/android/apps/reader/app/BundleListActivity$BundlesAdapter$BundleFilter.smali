.class Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$BundleFilter;
.super Landroid/widget/Filter;
.source "BundleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BundleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$BundleFilter;->this$0:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;Lcom/google/android/apps/reader/app/BundleListActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$BundleFilter;-><init>(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 14
    .parameter "constraint"

    .prologue
    const/4 v2, 0x0

    .line 313
    new-instance v10, Landroid/widget/Filter$FilterResults;

    invoke-direct {v10}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 314
    .local v10, filterResults:Landroid/widget/Filter$FilterResults;
    iget-object v1, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$BundleFilter;->this$0:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    #getter for: Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mBundles:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->access$200(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 315
    .local v7, bundleCount:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 316
    const/4 v1, 0x0

    iput-object v1, v10, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 317
    iput v7, v10, Landroid/widget/Filter$FilterResults;->count:I

    .line 332
    :goto_1b
    return-object v10

    .line 319
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, prefix:Ljava/lang/String;
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 321
    .local v9, filterPositions:Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, position:I
    :goto_26
    if-ge v11, v7, :cond_4e

    .line 322
    iget-object v1, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$BundleFilter;->this$0:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    #getter for: Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mBundles:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->access$200(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    .line 323
    .local v6, bundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    invoke-virtual {v6}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, title:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 325
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    .line 326
    .local v8, filterPosition:I
    invoke-virtual {v9, v8, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    .end local v8           #filterPosition:I
    :cond_4b
    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    .line 329
    .end local v0           #title:Ljava/lang/String;
    .end local v6           #bundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    :cond_4e
    iput-object v9, v10, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 330
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    iput v1, v10, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_1b
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 337
    iget-object v1, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$BundleFilter;->this$0:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    #setter for: Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->mFilterPositions:Landroid/util/SparseIntArray;
    invoke-static {v1, v0}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->access$302(Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter$BundleFilter;->this$0:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->notifyDataSetChanged()V

    .line 339
    return-void
.end method
