.class public Lcom/android/contacts/detail/StreamItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "StreamItemAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemClickListener:Landroid/view/View$OnClickListener;

.field private final mPhotoClickListener:Landroid/view/View$OnClickListener;

.field private mStreamItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 5
    .parameter "context"
    .parameter "itemClickListener"
    .parameter "photoClickListener"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 56
    iput-object p3, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 57
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    .local v0, count:I
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return v1

    :cond_a
    add-int/lit8 v1, v0, 0x2

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 71
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 72
    :cond_5
    const/4 v0, 0x0

    .line 74
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    add-int/lit8 v1, p1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 79
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 80
    :cond_5
    const-wide/16 v0, -0x1

    .line 82
    :goto_7
    return-wide v0

    :cond_8
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_7
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 143
    if-nez p1, :cond_5

    .line 144
    const/4 v0, 0x0

    .line 149
    :cond_4
    :goto_4
    return v0

    .line 146
    :cond_5
    if-eq p1, v0, :cond_4

    .line 149
    const/4 v0, 0x2

    goto :goto_4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 101
    if-nez p1, :cond_d

    .line 102
    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400d9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 138
    :goto_c
    return-object v5

    .line 104
    :cond_d
    const/4 v7, 0x1

    if-ne p1, v7, :cond_30

    .line 105
    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040097

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 106
    .local v5, titleView:Landroid/view/View;
    const v7, 0x7f0d0113

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    .local v4, titleTextView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0a016f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 110
    .end local v4           #titleTextView:Landroid/widget/TextView;
    .end local v5           #titleView:Landroid/view/View;
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/StreamItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/StreamItemEntry;

    .line 111
    .local v3, streamItem:Lcom/android/contacts/util/StreamItemEntry;
    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 112
    .local v2, manager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v3}, Lcom/android/contacts/util/StreamItemEntry;->getAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/contacts/util/StreamItemEntry;->getDataSet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 115
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v8, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v9, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewStreamItemPhotoActivity()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_77

    const/4 v7, 0x0

    :goto_54
    invoke-static {v8, v9, v3, v10, v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->createStreamItemView(Landroid/view/LayoutInflater;Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v6

    .line 121
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0d0227

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, contentView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewStreamItemActivity()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7a

    .line 126
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 128
    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    :goto_75
    move-object v5, v6

    .line 138
    goto :goto_c

    .line 115
    .end local v1           #contentView:Landroid/view/View;
    .end local v6           #view:Landroid/view/View;
    :cond_77
    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    goto :goto_54

    .line 131
    .restart local v1       #contentView:Landroid/view/View;
    .restart local v6       #view:Landroid/view/View;
    :cond_7a
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 133
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    .line 136
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_75
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public setStreamItems(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, streamItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/util/StreamItemEntry;>;"
    iput-object p1, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/detail/StreamItemAdapter;->notifyDataSetChanged()V

    .line 155
    return-void
.end method
