.class Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountRecentLabelSpinner.java"

# interfaces
.implements Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/AccountRecentLabelSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentLabelAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;"
    }
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mNumLabels:I

.field private mRecentLabels:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/AccountRecentLabelSpinner;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    .line 497
    const/4 v0, 0x0

    const v1, 0x7f0f0010

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 498
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mRecentLabels:Lcom/google/common/collect/ImmutableList;

    .line 499
    return-void
.end method

.method private addEmptyIfNull(Ljava/lang/String;)V
    .registers 6
    .parameter "item"

    .prologue
    .line 523
    if-nez p1, :cond_11

    .line 524
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    const-string v2, "attempting to add null recent label item to spinner"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 527
    :cond_11
    if-nez p1, :cond_15

    const-string p1, ""

    .end local p1
    :cond_15
    invoke-virtual {p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->add(Ljava/lang/Object;)V

    .line 528
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public canSelect(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 532
    iget v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mNumLabels:I

    if-lez v0, :cond_9

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 565
    if-nez p1, :cond_3d

    const v2, 0x7f040001

    .line 567
    .local v2, res:I
    :goto_5
    invoke-virtual {p0, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->setDropDownViewResource(I)V

    .line 568
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 570
    .local v4, view:Landroid/view/View;
    if-lez p1, :cond_3c

    iget v5, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mNumLabels:I

    if-gt p1, v5, :cond_3c

    .line 572
    iget-object v5, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mRecentLabels:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Label;

    .line 573
    .local v0, l:Lcom/google/android/gm/provider/Label;
    const v5, 0x7f0f0012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 575
    .local v3, unreadView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gm/Utils;->getLabelDisplayCount(Lcom/google/android/gm/provider/Label;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/gm/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, labelCount:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 579
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    .end local v0           #l:Lcom/google/android/gm/provider/Label;
    .end local v1           #labelCount:Ljava/lang/String;
    .end local v3           #unreadView:Landroid/widget/TextView;
    :cond_3c
    :goto_3c
    return-object v4

    .line 565
    .end local v2           #res:I
    .end local v4           #view:Landroid/view/View;
    :cond_3d
    const v2, 0x7f04003b

    goto :goto_5

    .line 581
    .restart local v0       #l:Lcom/google/android/gm/provider/Label;
    .restart local v1       #labelCount:Ljava/lang/String;
    .restart local v2       #res:I
    .restart local v3       #unreadView:Landroid/widget/TextView;
    .restart local v4       #view:Landroid/view/View;
    :cond_41
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 553
    if-nez p1, :cond_4

    .line 554
    const/4 v0, -0x2

    .line 560
    .local v0, type:I
    :goto_3
    return v0

    .line 555
    .end local v0           #type:I
    :cond_4
    iget v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mNumLabels:I

    if-le p1, v1, :cond_a

    .line 556
    const/4 v0, 0x1

    .restart local v0       #type:I
    goto :goto_3

    .line 558
    .end local v0           #type:I
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #type:I
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 547
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 542
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onClick(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 596
    iget v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mNumLabels:I

    if-le p1, v1, :cond_e

    .line 597
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$500(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;->showLabelList()V

    .line 602
    :cond_d
    :goto_d
    return-void

    .line 598
    :cond_e
    if-lez p1, :cond_d

    .line 599
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mRecentLabels:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Label;

    .line 600
    .local v0, l:Lcom/google/android/gm/provider/Label;
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$500(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;->navigateToLabel(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onShowPopup()V
    .registers 1

    .prologue
    .line 607
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mAccount:Ljava/lang/String;

    .line 503
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->clear()V

    .line 504
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->notifyDataSetChanged()V

    .line 505
    return-void
.end method

.method public setLabels(Lcom/google/common/collect/ImmutableList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, labels:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/google/android/gm/provider/Label;>;"
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mRecentLabels:Lcom/google/common/collect/ImmutableList;

    .line 509
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mNumLabels:I

    .line 510
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->clear()V

    .line 511
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 512
    iget-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->mAccount:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->addEmptyIfNull(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Label;

    .line 514
    .local v1, l:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->addEmptyIfNull(Ljava/lang/String;)V

    goto :goto_1a

    .line 516
    .end local v1           #l:Lcom/google/android/gm/provider/Label;
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c015e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->addEmptyIfNull(Ljava/lang/String;)V

    .line 518
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->notifyDataSetChanged()V

    .line 519
    return-void
.end method
