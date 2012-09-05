.class Lcom/android/browser/PieControlXLarge$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "PieControlXLarge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/PieControlXLarge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuAdapter"
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field mUiController:Lcom/android/browser/UiController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/UiController;)V
    .registers 4
    .parameter "ctx"
    .parameter "ctl"

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/android/browser/PieControlXLarge$MenuAdapter;->mUiController:Lcom/android/browser/UiController;

    .line 169
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/PieControlXLarge$MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/PieControlXLarge$MenuAdapter;->mItems:Ljava/util/List;

    .line 171
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/browser/PieControlXLarge$MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "position"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/browser/PieControlXLarge$MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/browser/PieControlXLarge$MenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 196
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 208
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge$MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 209
    .local v0, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge$MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040033

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 211
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0d0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    .local v1, label:Landroid/widget/TextView;
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0xf0

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 202
    iget-object v1, p0, Lcom/android/browser/PieControlXLarge$MenuAdapter;->mUiController:Lcom/android/browser/UiController;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Lcom/android/browser/UiController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 204
    :cond_11
    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge$MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 176
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 177
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 178
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge$MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 181
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_24
    invoke-virtual {p0}, Lcom/android/browser/PieControlXLarge$MenuAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method
