.class public Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "LabelSpinnerAdapter.java"


# static fields
.field private static final UNSELECTED:I


# instance fields
.field private final context:Landroid/content/Context;

.field private currentLabel:Lcom/google/android/apps/googlevoice/core/Label;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/core/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/core/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, labels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Label;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->context:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->resourceId:I

    .line 35
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->labels:Ljava/util/List;

    .line 36
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method private setTitle(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "titleView"
    .parameter "title"

    .prologue
    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_d
    return-void
.end method

.method private setUnreadCount(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "unreadView"
    .parameter "unread"

    .prologue
    .line 100
    if-eqz p2, :cond_10

    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x8

    :goto_d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :cond_10
    return-void

    .line 102
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    .line 63
    move-object v5, p2

    .line 64
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_e

    .line 65
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->resourceId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 68
    :cond_e
    sget v6, Lcom/google/android/apps/googlevoice/R$id;->title:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, titleView:Landroid/widget/TextView;
    sget v6, Lcom/google/android/apps/googlevoice/R$id;->unread_count:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 71
    .local v4, unreadView:Landroid/widget/TextView;
    if-nez p1, :cond_27

    .line 73
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :cond_26
    :goto_26
    return-object v5

    .line 75
    :cond_27
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->labels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt p1, v6, :cond_44

    .line 77
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->actionbar_dropdown_item_show_all_lables:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, title:Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->setTitle(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 80
    const-string v6, ""

    invoke-direct {p0, v4, v6}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->setUnreadCount(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 82
    .end local v1           #title:Ljava/lang/String;
    :cond_44
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->labels:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Label;

    .line 83
    .local v0, label:Lcom/google/android/apps/googlevoice/core/Label;
    if-eqz v0, :cond_26

    .line 84
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/google/android/apps/googlevoice/core/Label;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->setTitle(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getUnreadCount()I

    move-result v3

    .line 86
    .local v3, unreadCount:I
    if-lez v3, :cond_65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_61
    invoke-direct {p0, v4, v6}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->setUnreadCount(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_26

    :cond_65
    const-string v6, ""

    goto :goto_61
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->labels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Label;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 120
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 45
    move-object v3, p2

    .line 46
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_14

    .line 47
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->resourceId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 51
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_14
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->currentLabel:Lcom/google/android/apps/googlevoice/core/Label;

    if-eqz v4, :cond_38

    .line 52
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    .local v1, titleView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->currentLabel:Lcom/google/android/apps/googlevoice/core/Label;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/googlevoice/core/Label;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->setTitle(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 55
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->unread_count:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    .local v2, unreadView:Landroid/widget/TextView;
    const-string v4, ""

    invoke-direct {p0, v2, v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->setUnreadCount(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 58
    .end local v1           #titleView:Landroid/widget/TextView;
    .end local v2           #unreadView:Landroid/widget/TextView;
    :cond_38
    return-object v3
.end method

.method public setCurrentLabel(Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 2
    .parameter "label"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->currentLabel:Lcom/google/android/apps/googlevoice/core/Label;

    .line 41
    return-void
.end method
