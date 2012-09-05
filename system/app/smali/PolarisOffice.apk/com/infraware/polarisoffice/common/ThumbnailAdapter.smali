.class public Lcom/infraware/polarisoffice/common/ThumbnailAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;,
        Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;
    }
.end annotation


# static fields
.field private static final STATUS_DONE:I = 0x1

.field private static final STATUS_INIT:I


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;II)V
    .registers 7
    .parameter "context"
    .parameter "handler"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    const-string v0, "ThumnailAdapter"

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->LOG_CAT:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mContext:Landroid/content/Context;

    .line 56
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mCurrentPage:I

    .line 65
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mHandler:Landroid/os/Handler;

    .line 68
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mThumbnailList:Ljava/util/ArrayList;

    .line 71
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 72
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mTempBitmap:Landroid/graphics/Bitmap;

    const v1, -0x817672

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public addPage()I
    .registers 3

    .prologue
    .line 99
    new-instance v0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mThumbnailList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;-><init>(Lcom/infraware/polarisoffice/common/ThumbnailAdapter;I)V

    .line 100
    .local v0, item:Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mThumbnailList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mThumbnailList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mThumbnailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mCurrentPage:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 117
    const-string v4, "ThumnailAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "imageView Position = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-nez p2, :cond_73

    .line 121
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03001c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    new-instance v1, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;-><init>(Lcom/infraware/polarisoffice/common/ThumbnailAdapter;)V

    .line 124
    .local v1, holder:Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;
    const v4, 0x7f0c0080

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;->mFrame:Landroid/widget/FrameLayout;

    .line 125
    const v4, 0x7f0c0081

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 128
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_3e
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mThumbnailList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;

    .line 135
    .local v2, item:Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;
    iget v4, v2, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->mStatus:I

    packed-switch v4, :pswitch_data_aa

    .line 148
    :goto_4b
    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_8e

    .line 150
    iget-object v4, v1, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    :goto_5a
    iget v4, v2, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->mPageNum:I

    iget v5, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mCurrentPage:I

    if-ne v4, v5, :cond_96

    .line 155
    iget-object v4, v1, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;->mFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020290

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_72
    return-object p2

    .line 131
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #holder:Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;
    .end local v2           #item:Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;
    :cond_73
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;

    .restart local v1       #holder:Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;
    goto :goto_3e

    .line 138
    .restart local v2       #item:Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;
    :pswitch_7a
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 139
    .local v3, msg:Landroid/os/Message;
    iget v4, v2, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->mPageNum:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 140
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    const/4 v4, 0x1

    iput v4, v2, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->mStatus:I

    goto :goto_4b

    .line 152
    .end local v3           #msg:Landroid/os/Message;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_8e
    iget-object v4, v1, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;->mThumbnail:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5a

    .line 157
    :cond_96
    iget-object v4, v1, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailHolder;->mFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02027b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_72

    .line 135
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_7a
    .end packed-switch
.end method

.method public setBitmap(ILandroid/graphics/Bitmap;)V
    .registers 6
    .parameter "page"
    .parameter "bitmap"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mThumbnailList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;

    .line 93
    .local v0, item:Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;
    if-eqz v0, :cond_f

    .line 94
    invoke-virtual {v0, p2}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_f
    return-void
.end method

.method public setCurrentPage(I)V
    .registers 2
    .parameter "page"

    .prologue
    .line 107
    iput p1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->mCurrentPage:I

    .line 108
    return-void
.end method
