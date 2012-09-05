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
    .line 135
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
    .registers 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x2

    .line 65
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    if-ne p1, v4, :cond_6

    .line 87
    :cond_5
    :goto_5
    return-void

    .line 69
    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 70
    const v4, 0x7f0d0036

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v4, 0x7f0d0037

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    .line 73
    .local v0, avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 75
    invoke-interface {p3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 76
    const-wide/16 v1, 0x0

    .line 81
    .local v1, gaiaId:J
    :goto_31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setContactId(J)V

    .line 83
    const v4, 0x7f0d0038

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 84
    .local v3, nameView:Landroid/widget/TextView;
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 78
    .end local v1           #gaiaId:J
    .end local v3           #nameView:Landroid/widget/TextView;
    :cond_46
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .restart local v1       #gaiaId:J
    goto :goto_31
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 60
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
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->isExtraPeopleViewIndex(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 108
    const/4 v0, 0x1

    .line 110
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

.method public getViewFromPos(I)Landroid/view/View;
    .registers 3
    .parameter "pos"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->isExtraPeopleViewIndex(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    .line 55
    :goto_8
    return-object v0

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getViewFromPos(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x2

    return v0
.end method

.method public isExtraPeopleViewIndex(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 131
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
    .line 91
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->isExtraPeopleViewIndex(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    .line 97
    :goto_c
    return-object v1

    .line 95
    :cond_d
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 97
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

    .line 115
    if-gtz p1, :cond_7

    .line 116
    iput-object v5, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    .line 128
    :goto_6
    return-void

    .line 118
    :cond_7
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 120
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    .line 121
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    const v4, 0x7f0d0036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    const v4, 0x7f0d0037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mExtraPeopleView:Landroid/view/View;

    const v4, 0x7f0d0038

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, nameView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 125
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0e0006

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
