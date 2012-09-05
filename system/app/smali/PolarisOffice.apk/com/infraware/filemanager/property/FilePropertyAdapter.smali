.class public Lcom/infraware/filemanager/property/FilePropertyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FilePropertyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/infraware/filemanager/property/FilePropertyItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 22
    move-object v9, p2

    .line 24
    .local v9, v:Landroid/view/View;
    if-nez v9, :cond_17

    .line 27
    invoke-virtual {p0}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 28
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f030021

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 31
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_17
    invoke-virtual {p0, p1}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/property/FilePropertyItem;

    .line 32
    .local v1, item:Lcom/infraware/filemanager/property/FilePropertyItem;
    const v10, 0x7f0c00b1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 33
    .local v4, layoutHeader:Landroid/widget/RelativeLayout;
    const v10, 0x7f0c00b6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 35
    .local v3, layoutBody:Landroid/widget/LinearLayout;
    iget-object v10, v1, Lcom/infraware/filemanager/property/FilePropertyItem;->resImgRes:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_75

    .line 37
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 38
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    const v10, 0x7f0c00b2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 41
    .local v2, ivMime:Landroid/widget/ImageView;
    iget-object v10, v1, Lcom/infraware/filemanager/property/FilePropertyItem;->resImgRes:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    const v10, 0x7f0c00b4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 44
    .local v5, tvFileName:Landroid/widget/TextView;
    iget-object v10, v1, Lcom/infraware/filemanager/property/FilePropertyItem;->strTitle:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v10, 0x7f0c00b5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 46
    check-cast v6, Landroid/widget/TextView;

    .line 48
    .local v6, tvFolderInfo:Landroid/widget/TextView;
    iget-object v10, v1, Lcom/infraware/filemanager/property/FilePropertyItem;->strValue:Ljava/lang/String;

    if-nez v10, :cond_6b

    .line 50
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    .end local v2           #ivMime:Landroid/widget/ImageView;
    .end local v5           #tvFileName:Landroid/widget/TextView;
    .end local v6           #tvFolderInfo:Landroid/widget/TextView;
    :goto_6a
    return-object v9

    .line 54
    .restart local v2       #ivMime:Landroid/widget/ImageView;
    .restart local v5       #tvFileName:Landroid/widget/TextView;
    .restart local v6       #tvFolderInfo:Landroid/widget/TextView;
    :cond_6b
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v10, v1, Lcom/infraware/filemanager/property/FilePropertyItem;->strValue:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6a

    .line 60
    .end local v2           #ivMime:Landroid/widget/ImageView;
    .end local v5           #tvFileName:Landroid/widget/TextView;
    .end local v6           #tvFolderInfo:Landroid/widget/TextView;
    :cond_75
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 61
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    const v10, 0x7f0c00b7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 64
    .local v7, tvTitle:Landroid/widget/TextView;
    const v10, 0x7f0c00b8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 65
    .local v8, tvValue:Landroid/widget/TextView;
    iget-object v10, v1, Lcom/infraware/filemanager/property/FilePropertyItem;->strTitle:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v10, v1, Lcom/infraware/filemanager/property/FilePropertyItem;->strValue:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6a
.end method
