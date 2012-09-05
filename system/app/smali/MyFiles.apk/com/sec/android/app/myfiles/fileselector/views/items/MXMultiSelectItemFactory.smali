.class public Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;
.super Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;
.source "MXMultiSelectItemFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V
    .registers 5
    .parameter "context"
    .parameter "listener"
    .parameter "selector"
    .parameter "thumbnailer"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;-><init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V

    .line 44
    return-void
.end method


# virtual methods
.method public createItem(Ljava/lang/String;Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    .registers 7
    .parameter "parentTag"
    .parameter "f"

    .prologue
    .line 50
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/MediaFile;->isAudioFileType(I)Z

    move-result v0

    .line 53
    .local v0, isAudioFile:Z
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 56
    if-eqz v0, :cond_2f

    const-string v2, "mx_content_list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2f

    .line 60
    invoke-virtual {p0, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->getListPlayerItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    move-result-object v1

    .line 62
    .local v1, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    if-eqz v1, :cond_2e

    .line 64
    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setIconOverlay(I)V

    .line 74
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

    .line 136
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v3, :cond_89

    .line 140
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030014

    invoke-virtual {v3, v4, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 144
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->initViews()V

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setTag(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getCheckButton()Landroid/widget/CompoundButton;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;)V

    .line 152
    const v3, 0x7f0c0028

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    .local v1, tv:Landroid/widget/TextView;
    const v3, 0x7f0c0027

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 156
    .local v2, tv2:Landroid/widget/TextView;
    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->setTimeInformation(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/io/File;)V

    .line 158
    const v3, 0x7f0c0026

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 160
    .restart local v1       #tv:Landroid/widget/TextView;
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->setFileSizeInKb(Landroid/widget/TextView;Ljava/io/File;)V

    .line 162
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 166
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02003c

    invoke-virtual {p0, p1, v3, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->setExternalMemory(Ljava/io/File;Landroid/widget/ImageView;I)V

    .line 168
    invoke-virtual {v0, v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    .line 170
    invoke-virtual {v0, v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setIconBoundaryVisibility(I)V

    .line 172
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    :goto_6a
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setOnItemExecuteListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    .line 198
    .end local v0           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    .end local v1           #tv:Landroid/widget/TextView;
    .end local v2           #tv2:Landroid/widget/TextView;
    :goto_6f
    return-object v0

    .line 180
    .restart local v0       #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    .restart local v1       #tv:Landroid/widget/TextView;
    .restart local v2       #tv2:Landroid/widget/TextView;
    :cond_70
    invoke-virtual {v0, v7}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 184
    invoke-virtual {v0, v8}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setVideoFile(Z)V

    goto :goto_6a

    .line 188
    :cond_85
    invoke-virtual {v0, v7}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setVideoFile(Z)V

    goto :goto_6a

    .line 198
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

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_54

    .line 208
    new-instance v6, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;-><init>(Landroid/content/Context;)V

    .line 210
    .local v6, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030016

    invoke-virtual {v1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 212
    if-nez v6, :cond_19

    move-object v6, v0

    .line 246
    .end local v6           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :goto_18
    return-object v6

    .line 215
    .restart local v6       #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :cond_19
    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->initViews()V

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setTag(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getCheckButton()Landroid/widget/CompoundButton;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;I)V

    .line 222
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 226
    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->setExternalMemory(Ljava/io/File;Landroid/widget/ImageView;I)V

    .line 228
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    .line 240
    :goto_49
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setOnItemExecuteListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    goto :goto_18

    .line 236
    :cond_4f
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    goto :goto_49

    .end local v6           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :cond_54
    move-object v6, v0

    .line 246
    goto :goto_18
.end method

.method protected getListItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    .registers 9
    .parameter "f"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_65

    .line 86
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030019

    invoke-virtual {v1, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->initViews()V

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setTag(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getCheckButton()Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;)V

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 100
    invoke-virtual {v0, v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    .line 102
    invoke-virtual {v0, v6}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setIconBoundaryVisibility(I)V

    .line 104
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02003c

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->setExternalMemory(Ljava/io/File;Landroid/widget/ImageView;I)V

    .line 124
    :goto_46
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setOnItemExecuteListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    .line 130
    .end local v0           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :goto_4b
    return-object v0

    .line 112
    .restart local v0       #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
    :cond_4c
    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckVisibility(I)V

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 116
    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setVideoFile(Z)V

    goto :goto_46

    .line 120
    :cond_61
    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setVideoFile(Z)V

    goto :goto_46

    .line 130
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

    .line 252
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_51

    .line 256
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;-><init>(Landroid/content/Context;)V

    .line 258
    .local v0, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 260
    if-nez v0, :cond_19

    move-object v0, v1

    .line 279
    .end local v0           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    :goto_18
    return-object v0

    .line 263
    .restart local v0       #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    :cond_19
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->initViews()V

    .line 265
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setTag(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->getCheckButton()Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;)V

    .line 269
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

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setOnItemExecuteListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    goto :goto_18

    .end local v0           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    :cond_51
    move-object v0, v1

    .line 279
    goto :goto_18
.end method
