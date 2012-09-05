.class Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;
.super Landroid/widget/BaseAdapter;
.source "SlideLayoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MasterThumbnailAdapter"
.end annotation


# instance fields
.field img:[I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->this$0:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;

    .line 183
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 170
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    .line 178
    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->img:[I

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->mContext:Landroid/content/Context;

    .line 184
    iput-object p2, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->mContext:Landroid/content/Context;

    .line 185
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    .line 170
    :array_1c
    .array-data 0x4
        0x9bt 0x1t 0x2t 0x7ft
        0x96t 0x1t 0x2t 0x7ft
        0x97t 0x1t 0x2t 0x7ft
        0x98t 0x1t 0x2t 0x7ft
        0x99t 0x1t 0x2t 0x7ft
        0x9at 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0x9dt 0x1t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 189
    const/16 v0, 0x8

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->img:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 197
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 202
    if-nez p2, :cond_62

    .line 203
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 205
    new-instance v0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->this$0:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;

    invoke-direct {v0, v1}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;-><init>(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;)V

    .line 206
    .local v0, holder:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;
    const v1, 0x7f0c0080

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;->mFrame:Landroid/widget/FrameLayout;

    .line 207
    const v1, 0x7f0c0081

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 208
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    :goto_2c
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->this$0:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mBgImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 214
    iget-object v1, v0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;->mThumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->this$0:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mBgImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :cond_3f
    iget-object v1, v0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;->mThumbnail:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    iget-object v1, v0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;->mThumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->img:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v1, v0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;->mFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02027b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    return-object p2

    .line 211
    .end local v0           #holder:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;
    :cond_62
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;

    .restart local v0       #holder:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;
    goto :goto_2c
.end method
