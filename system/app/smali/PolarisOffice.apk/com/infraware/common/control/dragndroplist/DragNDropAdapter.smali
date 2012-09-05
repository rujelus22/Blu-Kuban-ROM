.class public final Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
.super Landroid/widget/BaseAdapter;
.source "DragNDropAdapter.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/RemoveListener;
.implements Lcom/infraware/common/control/dragndroplist/DropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/infraware/common/control/dragndroplist/DragNDropListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIds:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayouts:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mContent:Ljava/util/List;

    .line 26
    invoke-direct {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->initContext(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private initContext(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method


# virtual methods
.method public ChangeListItems(ILcom/infraware/common/control/dragndroplist/DragNDropListItem;)V
    .registers 4
    .parameter "location"
    .parameter "item"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mContent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public ChangeListItems(ILjava/lang/Boolean;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6
    .parameter "location"
    .parameter "ExistBitmapImg"
    .parameter "bitmap"
    .parameter "text"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->getItem(I)Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    move-result-object v0

    .line 73
    .local v0, listItem:Lcom/infraware/common/control/dragndroplist/DragNDropListItem;
    invoke-virtual {v0, p2}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->setExistBitmapImg(Ljava/lang/Boolean;)V

    .line 74
    invoke-virtual {v0, p3}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    invoke-virtual {v0, p4}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->setListText(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public ChangeMoveIcon(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "location"
    .parameter "moveIcon"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->getItem(I)Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    move-result-object v0

    .line 80
    .local v0, listItem:Lcom/infraware/common/control/dragndroplist/DragNDropListItem;
    invoke-virtual {v0, p2}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->setMoveIcon(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public InsertItem(ILcom/infraware/common/control/dragndroplist/DragNDropListItem;)V
    .registers 4
    .parameter "location"
    .parameter "item"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mContent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method public addItem(Lcom/infraware/common/control/dragndroplist/DragNDropListItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/infraware/common/control/dragndroplist/DragNDropListItem;
    .registers 3
    .parameter "position"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->getItem(I)Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 91
    if-nez p2, :cond_7e

    .line 92
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mLayouts:[I

    aget v2, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;-><init>()V

    .line 97
    .local v0, holder:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mIds:[I

    aget v1, v1, v4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;->bitmapImageView:Landroid/widget/ImageView;

    .line 98
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mIds:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;->listText:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mIds:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;->numText:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mIds:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;->moveIcon:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    :goto_49
    iget-object v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;->listText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->getItem(I)Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->getListText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;->bitmapImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->getItem(I)Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;->numText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->getItem(I)Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->getPageNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;->moveIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->getItem(I)Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->getMoveIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    return-object p2

    .line 105
    .end local v0           #holder:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;
    :cond_7e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter$ViewHolder;
    goto :goto_49
.end method

.method public initResources([I[I)V
    .registers 3
    .parameter "layouts"
    .parameter "ids"

    .prologue
    .line 35
    iput-object p2, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mIds:[I

    .line 36
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mLayouts:[I

    .line 37
    return-void
.end method

.method public onDrop(II)V
    .registers 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->getItem(I)Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    move-result-object v0

    .line 132
    .local v0, temp:Lcom/infraware/common/control/dragndroplist/DragNDropListItem;
    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->removeItem(I)V

    .line 133
    invoke-virtual {p0, p2, v0}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->InsertItem(ILcom/infraware/common/control/dragndroplist/DragNDropListItem;)V

    .line 134
    return-void
.end method

.method public onRemove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 126
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_b

    .line 128
    :cond_a
    :goto_a
    return-void

    .line 127
    :cond_b
    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->removeItem(I)V

    goto :goto_a
.end method

.method public removeItem(I)V
    .registers 3
    .parameter "location"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public setListItems(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/common/control/dragndroplist/DragNDropListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/common/control/dragndroplist/DragNDropListItem;>;"
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->mContent:Ljava/util/List;

    .line 53
    return-void
.end method
