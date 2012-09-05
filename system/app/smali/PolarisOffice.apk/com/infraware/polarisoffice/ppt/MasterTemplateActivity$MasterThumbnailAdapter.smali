.class Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;
.super Landroid/widget/BaseAdapter;
.source "MasterTemplateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MasterThumbnailAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mImage:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field mMaxCount:I

.field mText:[I

.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->this$0:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;

    .line 135
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mContext:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mMaxCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mImage:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 166
    if-nez p2, :cond_63

    .line 167
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 169
    new-instance v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->this$0:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;

    invoke-direct {v0, v1}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;-><init>(Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;)V

    .line 170
    .local v0, holder:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;
    const v1, 0x7f0c0080

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;->mFrame:Landroid/widget/FrameLayout;

    .line 171
    const v1, 0x7f0c0081

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 172
    const v1, 0x7f0c0082

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;->mText:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    :goto_37
    iget-object v1, v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;->mThumbnail:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 179
    iget-object v1, v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;->mThumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mImage:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v1, v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mText:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v1, v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;->mFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02027b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-object p2

    .line 176
    .end local v0           #holder:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;
    :cond_63
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;

    .restart local v0       #holder:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;
    goto :goto_37
.end method

.method public setCount(I)V
    .registers 2
    .parameter "nCount"

    .prologue
    .line 145
    iput p1, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mMaxCount:I

    .line 146
    return-void
.end method

.method public setImage([I)V
    .registers 2
    .parameter "nImage"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mImage:[I

    .line 150
    return-void
.end method

.method public setText([I)V
    .registers 2
    .parameter "nText"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;->mText:[I

    .line 154
    return-void
.end method
