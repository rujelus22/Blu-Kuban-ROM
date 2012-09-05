.class public Lcom/infraware/common/control/list/BaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseListAdapter.java"


# instance fields
.field private mBaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/infraware/common/control/list/BaseListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mTextViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mTextViewWidth:I

    .line 29
    iput-object p1, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public addItem(Lcom/infraware/common/control/list/BaseListItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 25
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    if-nez p2, :cond_17

    .line 52
    new-instance v0, Lcom/infraware/common/control/list/BaseListView;

    iget-object v3, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/control/list/BaseListItem;

    invoke-direct {v0, v3, v2}, Lcom/infraware/common/control/list/BaseListView;-><init>(Landroid/content/Context;Lcom/infraware/common/control/list/BaseListItem;)V

    .line 53
    .local v0, itemView:Lcom/infraware/common/control/list/BaseListView;
    iget v2, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mTextViewWidth:I

    invoke-virtual {v0, v2}, Lcom/infraware/common/control/list/BaseListView;->setTextViewWidth(I)V

    .line 69
    :cond_16
    :goto_16
    return-object v0

    .end local v0           #itemView:Lcom/infraware/common/control/list/BaseListView;
    :cond_17
    move-object v0, p2

    .line 55
    check-cast v0, Lcom/infraware/common/control/list/BaseListView;

    .line 56
    .restart local v0       #itemView:Lcom/infraware/common/control/list/BaseListView;
    iget-object v2, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/control/list/BaseListItem;

    invoke-virtual {v2}, Lcom/infraware/common/control/list/BaseListItem;->getListIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 57
    iget-object v2, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/control/list/BaseListItem;

    invoke-virtual {v2}, Lcom/infraware/common/control/list/BaseListItem;->getListIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/common/control/list/BaseListView;->setmListIcon(Landroid/graphics/drawable/Drawable;)V

    .line 58
    :cond_37
    iget-object v2, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/control/list/BaseListItem;

    invoke-virtual {v2}, Lcom/infraware/common/control/list/BaseListItem;->getListText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 59
    iget-object v2, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/control/list/BaseListItem;

    invoke-virtual {v2}, Lcom/infraware/common/control/list/BaseListItem;->getListText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/common/control/list/BaseListView;->setmListText(Ljava/lang/String;)V

    .line 61
    :cond_54
    iget-object v2, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/control/list/BaseListItem;

    invoke-virtual {v2}, Lcom/infraware/common/control/list/BaseListItem;->getTextViewWidth()I

    move-result v1

    .line 62
    .local v1, nTextViewWidth:I
    if-lez v1, :cond_65

    .line 63
    invoke-virtual {v0, v1}, Lcom/infraware/common/control/list/BaseListView;->setTextViewWidth(I)V

    .line 65
    :cond_65
    iget-object v2, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/control/list/BaseListItem;

    invoke-virtual {v2}, Lcom/infraware/common/control/list/BaseListItem;->isIsRadioBtn()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 66
    iget-object v2, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/control/list/BaseListItem;

    invoke-virtual {v2}, Lcom/infraware/common/control/list/BaseListItem;->IsRadoBtnChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/infraware/common/control/list/BaseListView;->setRadioButtonCheck(Z)V

    goto :goto_16
.end method

.method public setListItems(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/common/control/list/BaseListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/common/control/list/BaseListItem;>;"
    iput-object p1, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setRadioCheck(IZ)V
    .registers 4
    .parameter "position"
    .parameter "bCheck"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mBaseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/common/control/list/BaseListItem;

    invoke-virtual {v0, p2}, Lcom/infraware/common/control/list/BaseListItem;->setRadoBtnChecked(Z)V

    .line 46
    return-void
.end method

.method public setTextViewWidth(I)V
    .registers 2
    .parameter "nTextViewWidth"

    .prologue
    .line 41
    iput p1, p0, Lcom/infraware/common/control/list/BaseListAdapter;->mTextViewWidth:I

    .line 42
    return-void
.end method
