.class public Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;
.super Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;
.source "MXSingleSelectItemFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V
    .registers 5
    .parameter "context"
    .parameter "listener"
    .parameter "selector"
    .parameter "thumbnailer"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;-><init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V

    .line 48
    return-void
.end method


# virtual methods
.method public createEmptyItem(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .parameter "parentTag"

    .prologue
    const/4 v3, 0x1

    .line 288
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, view:Landroid/widget/FrameLayout;
    if-eqz p1, :cond_24

    const-string v1, "mx_content_grid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_24

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_1e

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030018

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 310
    :cond_1e
    :goto_1e
    const-string v1, "@@EMPTY_ITEM"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 312
    return-object v0

    .line 304
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_1e

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030025

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1e
.end method

.method public createItem(Ljava/lang/String;Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    .registers 7
    .parameter "parentTag"
    .parameter "f"

    .prologue
    .line 54
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/MediaFile;->isAudioFileType(I)Z

    move-result v0

    .line 57
    .local v0, isAudioFile:Z
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 60
    if-eqz v0, :cond_2f

    const-string v2, "mx_content_list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2f

    .line 64
    invoke-virtual {p0, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->getListPlayerItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    move-result-object v1

    .line 66
    .local v1, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    if-eqz v1, :cond_2e

    .line 68
    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setIconOverlay(I)V

    .line 78
    .end local v1           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    :cond_2e
    :goto_2e
    return-object v1

    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->createItem(Ljava/lang/String;Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    move-result-object v1

    goto :goto_2e
.end method

.method protected getDetailItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    .registers 11
    .parameter "f"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 140
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v3, :cond_89

    .line 144
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030015

    invoke-virtual {v3, v4, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 148
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->initViews()V

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setTag(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getCheckButton()Landroid/widget/CompoundButton;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;)V

    .line 156
    const v3, 0x7f0c0028

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 158
    .local v1, tv:Landroid/widget/TextView;
    const v3, 0x7f0c0027

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 160
    .local v2, tv2:Landroid/widget/TextView;
    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->setTimeInformation(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/io/File;)V

    .line 162
    const v3, 0x7f0c0026

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 164
    .restart local v1       #tv:Landroid/widget/TextView;
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->setFileSizeInKb(Landroid/widget/TextView;Ljava/io/File;)V

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 170
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02003c

    invoke-virtual {p0, p1, v3, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->setExternalMemory(Ljava/io/File;Landroid/widget/ImageView;I)V

    .line 172
    invoke-virtual {v0, v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    .line 174
    invoke-virtual {v0, v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setIconBoundaryVisibility(I)V

    .line 176
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_6a
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setOnItemExecuteListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    .line 201
    .end local v0           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    .end local v1           #tv:Landroid/widget/TextView;
    .end local v2           #tv2:Landroid/widget/TextView;
    :goto_6f
    return-object v0

    .line 184
    .restart local v0       #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    .restart local v1       #tv:Landroid/widget/TextView;
    .restart local v2       #tv2:Landroid/widget/TextView;
    :cond_70
    invoke-virtual {v0, v7}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 188
    invoke-virtual {v0, v8}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setVideoFile(Z)V

    goto :goto_6a

    .line 191
    :cond_85
    invoke-virtual {v0, v7}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setVideoFile(Z)V

    goto :goto_6a

    .line 201
    .end local v0           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    .end local v1           #tv:Landroid/widget/TextView;
    .end local v2           #tv2:Landroid/widget/TextView;
    :cond_89
    const/4 v0, 0x0

    goto :goto_6f
.end method

.method protected getGridItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    .registers 9
    .parameter "f"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_54

    .line 211
    new-instance v6, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;-><init>(Landroid/content/Context;)V

    .line 213
    .local v6, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030017

    invoke-virtual {v1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 215
    if-nez v6, :cond_19

    move-object v6, v0

    .line 249
    .end local v6           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :goto_18
    return-object v6

    .line 218
    .restart local v6       #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :cond_19
    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->initViews()V

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setTag(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getCheckButton()Landroid/widget/CompoundButton;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;I)V

    .line 225
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 229
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    .line 231
    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->setExternalMemory(Ljava/io/File;Landroid/widget/ImageView;I)V

    .line 243
    :goto_49
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setOnItemExecuteListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    goto :goto_18

    .line 239
    :cond_4f
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    goto :goto_49

    .end local v6           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :cond_54
    move-object v6, v0

    .line 249
    goto :goto_18
.end method

.method protected getListItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    .registers 9
    .parameter "f"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_65

    .line 90
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001a

    invoke-virtual {v1, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->initViews()V

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setTag(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getCheckButton()Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;)V

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 104
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02003c

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->setExternalMemory(Ljava/io/File;Landroid/widget/ImageView;I)V

    .line 106
    invoke-virtual {v0, v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    .line 108
    invoke-virtual {v0, v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setIconBoundaryVisibility(I)V

    .line 128
    :goto_46
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setOnItemExecuteListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    .line 134
    .end local v0           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :goto_4b
    return-object v0

    .line 116
    .restart local v0       #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :cond_4c
    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 120
    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setVideoFile(Z)V

    goto :goto_46

    .line 124
    :cond_61
    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setVideoFile(Z)V

    goto :goto_46

    .line 134
    .end local v0           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :cond_65
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method public getListPlayerItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    .registers 7
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_51

    .line 259
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 263
    if-nez v0, :cond_19

    move-object v0, v1

    .line 282
    .end local v0           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    :goto_18
    return-object v0

    .line 266
    .restart local v0       #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    :cond_19
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->initViews()V

    .line 268
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setTag(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->getCheckButton()Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;)V

    .line 272
    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setProgressBar(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setOnItemExecuteListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    goto :goto_18

    .end local v0           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    :cond_51
    move-object v0, v1

    .line 282
    goto :goto_18
.end method
