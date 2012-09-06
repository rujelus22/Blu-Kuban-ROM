.class public Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "PlusOnePeopleAdapter.java"


# instance fields
.field private mExtraPeopleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 30
    return-void
.end method

.method private isLastViewExtraPeopleCount()Z
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 56
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    if-ne p1, v3, :cond_5

    .line 73
    :cond_4
    :goto_4
    return-void

    .line 60
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 61
    const v3, 0x7f090047

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    const v3, 0x7f090048

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    .line 64
    .local v0, avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 65
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, gaiaId:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 69
    const v3, 0x7f090049

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, nameView:Landroid/widget/TextView;
    const/4 v3, 0x3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->isLastViewExtraPeopleCount()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "pos"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->isExtraPeopleViewIndex(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_13

    .line 39
    if-nez p2, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    .end local p2
    :cond_12
    :goto_12
    return-object p2

    .line 42
    .restart local p2
    :cond_13
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->isExtraPeopleViewIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 43
    iget-object p2, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    goto :goto_12

    .line 46
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_12
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x2

    return v0
.end method

.method public isExtraPeopleViewIndex(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->isLastViewExtraPeopleCount()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 77
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->isExtraPeopleViewIndex(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    .line 83
    :goto_c
    return-object v1

    .line 81
    :cond_d
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 83
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_c
.end method

.method public setExtraPeopleCount(I)V
    .registers 9
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 101
    if-gtz p1, :cond_7

    .line 102
    iput-object v5, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    .line 114
    :goto_6
    return-void

    .line 104
    :cond_7
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 106
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    .line 107
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    const v4, 0x7f090047

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    const v4, 0x7f090048

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    const v4, 0x7f090049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    .local v1, nameView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 111
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0e000c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method
