.class Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/activity/DetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsListAdapter;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 492
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 496
    move-object v3, p2

    .line 498
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    .line 500
    .local v1, ti:Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;
    if-nez v3, :cond_2b

    .line 501
    iget-object v5, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsListAdapter;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$700(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 503
    .local v4, vi:Landroid/view/LayoutInflater;
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_54

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;->getSummary()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 504
    const v5, 0x7f030004

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 512
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_2b
    :goto_2b
    if-eqz v1, :cond_53

    if-eqz v3, :cond_53

    .line 513
    const v5, 0x7f0c000c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 514
    .local v2, title:Landroid/widget/TextView;
    const v5, 0x7f0c000d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 516
    .local v0, summary:Landroid/widget/TextView;
    if-eqz v2, :cond_4a

    .line 517
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :cond_4a
    if-eqz v0, :cond_53

    .line 520
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .end local v0           #summary:Landroid/widget/TextView;
    .end local v2           #title:Landroid/widget/TextView;
    :cond_53
    return-object v3

    .line 505
    .restart local v4       #vi:Landroid/view/LayoutInflater;
    :cond_54
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_62

    .line 506
    const v5, 0x7f030005

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_2b

    .line 508
    :cond_62
    const-string v5, "DetailsActivity"

    const-string v6, "DetailsActivity.getView => item is null "

    invoke-static {v5, v6}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method
