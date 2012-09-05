.class Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SheetViewList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/sheet/SheetViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconListAdapter"
.end annotation


# instance fields
.field arSrc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;",
            ">;"
        }
    .end annotation
.end field

.field inflater:Landroid/view/LayoutInflater;

.field layout:I

.field maincon:Landroid/content/Context;

.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "alayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p4, aarSrc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;>;"
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    .line 157
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->maincon:Landroid/content/Context;

    .line 159
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 160
    iput-object p4, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->arSrc:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public InsertItem(ILcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;)V
    .registers 4
    .parameter "location"
    .parameter "item"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 181
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;
    .registers 3
    .parameter "position"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->getItem(I)Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 172
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 185
    if-nez p2, :cond_c

    .line 186
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030028

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 188
    :cond_c
    const v2, 0x7f0c00f3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 189
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v2, 0x7f0c00f4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 191
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;

    iget v2, v2, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;->mIcon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    return-object p2
.end method

.method public onDrop(II)V
    .registers 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->getItem(I)Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;

    move-result-object v0

    .line 198
    .local v0, temp:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->removeItem(I)V

    .line 199
    invoke-virtual {p0, p2, v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->InsertItem(ILcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;)V

    .line 200
    return-void
.end method

.method public removeItem(I)V
    .registers 3
    .parameter "location"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    return-void
.end method
