.class Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "BundleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/BundleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BundleSubscriptionsAdapter"
.end annotation


# instance fields
.field private mBundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/BundleActivity$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public changeBundle(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;)V
    .registers 3
    .parameter "bundle"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->mBundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->mBundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    if-eqz v0, :cond_a

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->notifyDataSetChanged()V

    .line 233
    :goto_9
    return-void

    .line 231
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->notifyDataSetInvalidated()V

    goto :goto_9
.end method

.method public getBundle()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->mBundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->mBundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->mBundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getData()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->getSubscriptionCount()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getItem(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 3
    .parameter "position"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->mBundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getData()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->getSubscription(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->getItem(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 277
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSubscriptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->mBundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getData()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->getSubscriptionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 247
    move-object v4, p2

    .line 248
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_13

    .line 249
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 250
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 251
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 253
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_13
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->getItem(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v2

    .line 254
    .local v2, subscription:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 255
    .local v3, text1:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-object v4
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method
