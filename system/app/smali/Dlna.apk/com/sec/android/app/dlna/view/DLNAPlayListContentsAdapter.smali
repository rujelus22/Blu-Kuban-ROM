.class public Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;
.super Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
.source "DLNAPlayListContentsAdapter.java"


# instance fields
.field private selectAll:Lcom/sec/android/app/dlna/model/SelectAllItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V
    .registers 6
    .parameter "context"
    .parameter "resourceId"
    .parameter "list"
    .parameter "controlPointInfo"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->selectAll:Lcom/sec/android/app/dlna/model/SelectAllItem;

    .line 30
    new-instance v0, Lcom/sec/android/app/dlna/model/SelectAllItem;

    invoke-direct {v0, p3}, Lcom/sec/android/app/dlna/model/SelectAllItem;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->selectAll:Lcom/sec/android/app/dlna/model/SelectAllItem;

    .line 31
    return-void
.end method

.method private parseNull(Landroid/view/View;)V
    .registers 2
    .parameter "itemView"

    .prologue
    .line 92
    return-void
.end method

.method private parseSelectAll(Landroid/view/View;Ljava/lang/Object;)V
    .registers 16
    .parameter "view"
    .parameter "object"

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 95
    const v6, 0x7f070069

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 96
    .local v4, mediaName:Landroid/widget/TextView;
    const v6, 0x7f070065

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 97
    .local v3, icon:Landroid/widget/ImageView;
    const v6, 0x7f07006b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 98
    .local v1, cBox:Landroid/widget/CheckBox;
    const v6, 0x7f090054

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 99
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    const/4 v0, 0x1

    .line 105
    .local v0, bAllChecked:Z
    iget-object v6, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_76

    .line 106
    const/4 v0, 0x0

    .line 118
    :cond_36
    :goto_36
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 119
    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v7, v10, [[I

    new-array v8, v12, [I

    const v9, 0x10100a7

    aput v9, v8, v11

    aput-object v8, v7, v11

    new-array v8, v11, [I

    aput-object v8, v7, v12

    new-array v8, v10, [I

    iget-object v9, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2050001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    aput v9, v8, v11

    iget-object v9, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x205

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    aput v9, v8, v12

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 127
    const v6, 0x7f02005b

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    return-void

    .line 108
    :cond_76
    iget-object v6, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 109
    .local v5, o:Ljava/lang/Object;
    instance-of v6, v5, Lcom/sec/android/app/dlna/model/PlaylistItem;

    if-eqz v6, :cond_7c

    .line 110
    check-cast v5, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .end local v5           #o:Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isChecked()Z

    move-result v6

    if-nez v6, :cond_7c

    .line 111
    const/4 v0, 0x0

    .line 112
    goto :goto_36
.end method


# virtual methods
.method public enableCheckMode(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->selectAll:Lcom/sec/android/app/dlna/model/SelectAllItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/model/SelectAllItem;->setCheckAllItems(Z)V

    .line 36
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->checkMode:Z

    if-ne p1, v0, :cond_b

    .line 40
    :goto_a
    return-void

    .line 39
    :cond_b
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->checkMode:Z

    goto :goto_a
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->checkMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 50
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_d
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->checkMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 55
    if-nez p1, :cond_a

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->selectAll:Lcom/sec/android/app/dlna/model/SelectAllItem;

    .line 60
    :goto_9
    return-object v0

    .line 58
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    .line 60
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 70
    if-nez p2, :cond_17

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->itemLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, itemView:Landroid/view/View;
    :goto_b
    if-ltz p1, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_19

    .line 76
    :cond_13
    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->parseNull(Landroid/view/View;)V

    .line 88
    :goto_16
    return-object v0

    .line 73
    .end local v0           #itemView:Landroid/view/View;
    :cond_17
    move-object v0, p2

    .restart local v0       #itemView:Landroid/view/View;
    goto :goto_b

    .line 79
    :cond_19
    iget-boolean v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->checkMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    if-nez p1, :cond_25

    .line 80
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->parseSelectAll(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_16

    .line 82
    :cond_25
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/api/DeviceItem;

    if-eqz v1, :cond_35

    .line 83
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->parseDeviceItem(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_16

    .line 84
    :cond_35
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    if-eqz v1, :cond_45

    .line 85
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->parsePlayListItem(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_16

    .line 87
    :cond_45
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;->parseSelectAll(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_16
.end method
