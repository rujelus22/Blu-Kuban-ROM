.class public abstract Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;
.super Ljava/lang/Object;
.source "MXBaseContentItemFactory.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

.field private mExtVisibility:Z

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

.field protected mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V
    .registers 6
    .parameter "context"
    .parameter "listener"
    .parameter "selector"
    .parameter "thumbnailer"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    .line 58
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExtVisibility:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->setContext(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->setExecListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    .line 70
    invoke-direct {p0, p3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->setSelector(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;)V

    .line 72
    invoke-direct {p0, p4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->setThumbnailer(Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V

    .line 74
    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 3
    .parameter "mContext"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    .line 290
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 293
    return-void
.end method

.method private setSelector(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;)V
    .registers 2
    .parameter "mSelector"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    .line 305
    return-void
.end method

.method private setThumbnailer(Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V
    .registers 2
    .parameter "mThumbnailer"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    .line 311
    return-void
.end method


# virtual methods
.method public createEmptyItem(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .parameter "parentTag"

    .prologue
    .line 321
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, view:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_14

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030025

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 327
    :cond_14
    const-string v1, "@@EMPTY_ITEM"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 329
    return-object v0
.end method

.method public createItem(Ljava/lang/String;Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
    .registers 4
    .parameter "parentTag"
    .parameter "f"

    .prologue
    .line 252
    const-string v0, "mx_content_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 256
    invoke-virtual {p0, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->getListItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    move-result-object v0

    .line 276
    :goto_c
    return-object v0

    .line 260
    :cond_d
    const-string v0, "mx_content_detail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 264
    invoke-virtual {p0, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->getDetailItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    move-result-object v0

    goto :goto_c

    .line 268
    :cond_1a
    const-string v0, "mx_content_grid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    .line 272
    invoke-virtual {p0, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->getGridItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    move-result-object v0

    goto :goto_c

    .line 276
    :cond_27
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected abstract getDetailItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
.end method

.method protected abstract getGridItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
.end method

.method protected abstract getListItem(Ljava/io/File;)Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
.end method

.method protected setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;)V
    .registers 11
    .parameter "iv"
    .parameter "tv"
    .parameter "cb"
    .parameter "f"

    .prologue
    .line 107
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;I)V

    .line 109
    return-void
.end method

.method protected setBasicItems(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Ljava/io/File;I)V
    .registers 12
    .parameter "iv"
    .parameter "tv"
    .parameter "cb"
    .parameter "f"
    .parameter "iconSize"

    .prologue
    .line 114
    if-eqz p1, :cond_16

    .line 118
    invoke-virtual {p4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_45

    .line 124
    packed-switch p5, :pswitch_data_6c

    .line 138
    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-static {p4, v4}, Lcom/sec/android/app/myfiles/MediaFile;->getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_13
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_16
    :goto_16
    if-eqz p2, :cond_23

    .line 184
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, name:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExtVisibility:Z

    if-eqz v4, :cond_53

    .line 190
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .end local v2           #name:Ljava/lang/String;
    :cond_23
    :goto_23
    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    if-eqz v4, :cond_3b

    if-eqz p3, :cond_3b

    .line 216
    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    invoke-virtual {p3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 218
    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->isSelected(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 222
    :cond_3b
    return-void

    .line 130
    :pswitch_3c
    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-static {p4, v4}, Lcom/sec/android/app/myfiles/MediaFile;->getLargeIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_13

    .line 154
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_45
    packed-switch p5, :pswitch_data_72

    .line 168
    const v3, 0x7f02003a

    .line 174
    .local v3, resId:I
    :goto_4b
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16

    .line 160
    .end local v3           #resId:I
    :pswitch_4f
    const v3, 0x7f02003b

    .line 162
    .restart local v3       #resId:I
    goto :goto_4b

    .line 198
    .end local v3           #resId:I
    .restart local v2       #name:Ljava/lang/String;
    :cond_53
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 200
    .local v1, lastDot:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_67

    .line 202
    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 206
    :cond_67
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 124
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_3c
    .end packed-switch

    .line 154
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4f
    .end packed-switch
.end method

.method public setExecListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V
    .registers 2
    .parameter "mExecListener"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mExecListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    .line 299
    return-void
.end method

.method protected setExternalMemory(Ljava/io/File;Landroid/widget/ImageView;I)V
    .registers 5
    .parameter "f"
    .parameter "iconView"
    .parameter "resId"

    .prologue
    .line 334
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isExternalRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isUsbHostRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 335
    :cond_14
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    :cond_17
    return-void
.end method

.method public setFileSizeInKb(Landroid/widget/TextView;Ljava/io/File;)V
    .registers 8
    .parameter "tv"
    .parameter "f"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method protected setTimeInformation(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/io/File;)V
    .registers 7
    .parameter "tvDate"
    .parameter "tvTime"
    .parameter "f"

    .prologue
    .line 229
    if-eqz p1, :cond_17

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_17
    if-eqz p2, :cond_2e

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItemFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_2e
    return-void
.end method
