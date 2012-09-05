.class public Lcom/infraware/filemanager/template/TemplateListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TemplateListAdapter.java"


# instance fields
.field clrState:Landroid/content/res/ColorStateList;

.field private m_listFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/template/TemplateListItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

.field private m_oInflater:Landroid/view/LayoutInflater;

.field private m_oThumbnail:Lcom/infraware/filemanager/manager/TemplateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    .line 20
    iput-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_oThumbnail:Lcom/infraware/filemanager/manager/TemplateManager;

    .line 22
    iput-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_listFiles:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    .line 25
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 26
    new-array v2, v4, [I

    aput-object v2, v1, v5

    .line 27
    new-array v2, v6, [I

    fill-array-data v2, :array_44

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->clrState:Landroid/content/res/ColorStateList;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    .line 32
    new-instance v0, Lcom/infraware/filemanager/file/FileListIcon;

    invoke-direct {v0, p1}, Lcom/infraware/filemanager/file/FileListIcon;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    .line 33
    invoke-static {p1}, Lcom/infraware/filemanager/manager/TemplateManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/TemplateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_oThumbnail:Lcom/infraware/filemanager/manager/TemplateManager;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_listFiles:Ljava/util/ArrayList;

    .line 36
    return-void

    .line 27
    nop

    :array_44
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public addList(Lcom/infraware/filemanager/template/TemplateListItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public clearList()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 63
    if-nez p2, :cond_85

    .line 64
    iget-object v3, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030023

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance v0, Lcom/infraware/filemanager/template/TemplateViewHolder;

    invoke-direct {v0}, Lcom/infraware/filemanager/template/TemplateViewHolder;-><init>()V

    .line 67
    .local v0, holder:Lcom/infraware/filemanager/template/TemplateViewHolder;
    const v3, 0x7f0c00c0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/infraware/filemanager/template/TemplateViewHolder;->m_imageThumbnail:Landroid/widget/ImageView;

    .line 68
    const v3, 0x7f0c00c1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/infraware/filemanager/template/TemplateViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    .line 69
    const v3, 0x7f0c00c2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/infraware/filemanager/template/TemplateViewHolder;->m_textName:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :goto_35
    move-object v2, p2

    .line 78
    .local v2, localView:Landroid/view/View;
    iget-object v3, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_listFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/template/TemplateListItem;

    .line 80
    .local v1, item:Lcom/infraware/filemanager/template/TemplateListItem;
    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    iget-object v3, v0, Lcom/infraware/filemanager/template/TemplateViewHolder;->m_textName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 83
    iget-object v3, v0, Lcom/infraware/filemanager/template/TemplateViewHolder;->m_imageIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    iget-object v5, v1, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/file/FileListIcon;->getFileIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    iget-object v3, v0, Lcom/infraware/filemanager/template/TemplateViewHolder;->m_imageThumbnail:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/infraware/filemanager/template/TemplateListAdapter;->m_oThumbnail:Lcom/infraware/filemanager/manager/TemplateManager;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/infraware/filemanager/template/TemplateListItem;->path:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/manager/TemplateManager;->getTemplateIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    iget-object v3, v0, Lcom/infraware/filemanager/template/TemplateViewHolder;->m_textName:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-object v2

    .line 74
    .end local v0           #holder:Lcom/infraware/filemanager/template/TemplateViewHolder;
    .end local v1           #item:Lcom/infraware/filemanager/template/TemplateListItem;
    .end local v2           #localView:Landroid/view/View;
    :cond_85
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/template/TemplateViewHolder;

    .restart local v0       #holder:Lcom/infraware/filemanager/template/TemplateViewHolder;
    goto :goto_35
.end method
