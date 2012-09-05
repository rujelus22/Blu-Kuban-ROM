.class public Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;
.super Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;
.source "MXBaseController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;)V
    .registers 7
    .parameter "context"
    .parameter "browser"
    .parameter "thumbnailer"
    .parameter "launcher"
    .parameter "selector"
    .parameter "factory"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;->setFolderBrowser(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;)V

    .line 44
    invoke-virtual {p0, p3}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;->setThumbnailer(Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V

    .line 46
    invoke-virtual {p0, p4}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;->setLauncher(Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;)V

    .line 48
    invoke-virtual {p0, p5}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;->setSelector(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;)V

    .line 50
    invoke-virtual {p0, p6}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;->setItemFactory(Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, f:Ljava/io/File;
    const/4 v4, 0x0

    .line 66
    .local v4, view:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    :try_start_2
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mListIsEmpty:Z

    if-eqz v5, :cond_13

    .line 70
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;->createEmptyItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 129
    :goto_12
    return-object v5

    .line 74
    :cond_13
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    if-eqz v5, :cond_1d

    .line 78
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->getFile(I)Ljava/io/File;

    move-result-object v2

    .line 82
    :cond_1d
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;

    if-eqz v5, :cond_2d

    .line 86
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;->createItem(Ljava/lang/String;Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    move-result-object v4

    .line 90
    :cond_2d
    const/4 v3, 0x0

    .line 92
    .local v3, path:Ljava/lang/String;
    if-eqz v2, :cond_4a

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;->getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v5, v3}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->isBroken(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 103
    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Bitmap;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setThumbnail(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    :cond_48
    :goto_48
    move-object v5, v4

    .line 129
    goto :goto_12

    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_4a
    move-object v5, v4

    .line 95
    goto :goto_12

    .line 107
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_4c
    if-eqz v0, :cond_48

    .line 110
    invoke-static {v3}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->isInstallFileType(I)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 111
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setIcon(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5d} :catch_5e

    goto :goto_48

    .line 119
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v3           #path:Ljava/lang/String;
    :catch_5e
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_12

    .line 114
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v3       #path:Ljava/lang/String;
    :cond_6a
    :try_start_6a
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setThumbnail(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6f} :catch_5e

    goto :goto_48
.end method
