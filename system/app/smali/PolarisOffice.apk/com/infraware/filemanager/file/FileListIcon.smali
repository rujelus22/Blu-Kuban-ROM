.class public Lcom/infraware/filemanager/file/FileListIcon;
.super Ljava/lang/Object;
.source "FileListIcon.java"


# instance fields
.field public Boxnet:Landroid/graphics/Bitmap;

.field public Folder:Landroid/graphics/Bitmap;

.field public Google:Landroid/graphics/Bitmap;

.field public ICON_DRM_N:Landroid/graphics/Bitmap;

.field public ICON_DRM_P:Landroid/graphics/Bitmap;

.field public ICON_SHORT_CUT:Landroid/graphics/Bitmap;

.field public Parent:Landroid/graphics/Bitmap;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListIcon;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 29
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200ba

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileListIcon;->Google:Landroid/graphics/Bitmap;

    .line 30
    const v1, 0x7f0200ad

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileListIcon;->Boxnet:Landroid/graphics/Bitmap;

    .line 32
    const v1, 0x7f0200b9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileListIcon;->Parent:Landroid/graphics/Bitmap;

    .line 33
    const v1, 0x7f0200b8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileListIcon;->Folder:Landroid/graphics/Bitmap;

    .line 35
    const v1, 0x7f0200b3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileListIcon;->ICON_DRM_N:Landroid/graphics/Bitmap;

    .line 36
    const v1, 0x7f0200b4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileListIcon;->ICON_DRM_P:Landroid/graphics/Bitmap;

    .line 38
    const v1, 0x7f0200d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileListIcon;->ICON_SHORT_CUT:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method

.method private getIconByFileExt(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "aFileExt"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListIcon;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/infraware/filemanager/manager/IconManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/IconManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/infraware/filemanager/manager/IconManager;->getBmpByExt(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    .local v0, icon:Landroid/graphics/Bitmap;
    return-object v0
.end method


# virtual methods
.method public getDRMFileIcon(Lcom/infraware/filemanager/porting/DRM;Lcom/infraware/filemanager/file/FileListItem;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "drm"
    .parameter "item"

    .prologue
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, strFileName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, mimeType:I
    packed-switch v0, :pswitch_data_64

    .line 72
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListIcon;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/infraware/filemanager/manager/IconManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/IconManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->getBmpByExt(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_39
    return-object v2

    .line 65
    :pswitch_3a
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListIcon;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bf

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_39

    .line 67
    :pswitch_48
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListIcon;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ac

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_39

    .line 69
    :pswitch_56
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListIcon;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_39

    .line 62
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_48
        :pswitch_56
    .end packed-switch
.end method

.method public getDRMIcon(Lcom/infraware/filemanager/porting/DRM;Lcom/infraware/filemanager/file/FileListItem;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "drm"
    .parameter "item"

    .prologue
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, strFileName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/infraware/filemanager/porting/DRM;->getDrmContentJudge(I)I

    move-result v0

    .line 84
    .local v0, right:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    .line 85
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListIcon;->ICON_DRM_P:Landroid/graphics/Bitmap;

    .line 87
    :goto_34
    return-object v2

    :cond_35
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListIcon;->ICON_DRM_N:Landroid/graphics/Bitmap;

    goto :goto_34
.end method

.method public getFileIcon(Lcom/infraware/filemanager/file/FileListItem;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "item"

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, icon:Landroid/graphics/Bitmap;
    iget-object v0, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 95
    .local v0, ext:Ljava/lang/String;
    iget-object v2, p1, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p1, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    .line 96
    iget-object v0, p1, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    .line 98
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/infraware/filemanager/file/FileListIcon;->getIconByFileExt(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 103
    :goto_1f
    return-object v1

    .line 101
    :cond_20
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListIcon;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/infraware/filemanager/manager/IconManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/IconManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/manager/IconManager;->getBmpByExt(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1f
.end method

.method public getFileIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, icon:Landroid/graphics/Bitmap;
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 110
    .local v2, idx_ext:I
    if-gez v2, :cond_b

    .line 119
    :goto_a
    return-object v3

    .line 113
    :cond_b
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, ext:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_21

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/infraware/filemanager/file/FileListIcon;->getIconByFileExt(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1f
    move-object v3, v1

    .line 119
    goto :goto_a

    .line 117
    :cond_21
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileListIcon;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/infraware/filemanager/manager/IconManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/IconManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/infraware/filemanager/manager/IconManager;->getBmpByExt(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1f
.end method

.method public getFolderIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "folderName"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v1, ".."

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 126
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListIcon;->Parent:Landroid/graphics/Bitmap;

    .line 130
    :goto_b
    return-object v0

    .line 128
    :cond_c
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListIcon;->Folder:Landroid/graphics/Bitmap;

    goto :goto_b
.end method

.method public getResByFileExt(Ljava/lang/String;)I
    .registers 4
    .parameter "aFileExt"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListIcon;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/infraware/filemanager/manager/IconManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/IconManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/infraware/filemanager/manager/IconManager;->getResIdByExt(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, resId:I
    return v0
.end method

.method public getRootIcon(I)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "webType"

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, icon:Landroid/graphics/Bitmap;
    if-nez p1, :cond_6

    .line 137
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListIcon;->Folder:Landroid/graphics/Bitmap;

    .line 143
    :cond_5
    :goto_5
    return-object v0

    .line 138
    :cond_6
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    .line 139
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListIcon;->Google:Landroid/graphics/Bitmap;

    goto :goto_5

    .line 140
    :cond_c
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 141
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListIcon;->Boxnet:Landroid/graphics/Bitmap;

    goto :goto_5
.end method

.method public getShortcutIcon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListIcon;->ICON_SHORT_CUT:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTypeByFileExt(Ljava/lang/String;)I
    .registers 4
    .parameter "aFileExt"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListIcon;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/infraware/filemanager/manager/IconManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/IconManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/infraware/filemanager/manager/IconManager;->getTypeByExt(Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, resId:I
    return v0
.end method
