.class public Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ServiceSpinnerAdapter.java"


# instance fields
.field private final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, services:Ljava/util/List;,"Ljava/util/List<Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;->mServices:Ljava/util/List;

    .line 40
    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 6
    .parameter "position"
    .parameter "view"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;->getItem(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    .line 71
    .local v0, service:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method private newView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 6
    .parameter "parent"
    .parameter "layout"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 66
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 89
    move-object v0, p2

    .line 90
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_a

    .line 91
    const v1, 0x1090009

    invoke-direct {p0, p3, v1}, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;->newView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 93
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;->bindView(ILandroid/view/View;)V

    .line 94
    return-object v0
.end method

.method public getItem(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 3
    .parameter "position"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;->mServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;->getItem(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 79
    move-object v0, p2

    .line 80
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_a

    .line 81
    const v1, 0x1090008

    invoke-direct {p0, p3, v1}, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;->newView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 83
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;->bindView(ILandroid/view/View;)V

    .line 84
    return-object v0
.end method
