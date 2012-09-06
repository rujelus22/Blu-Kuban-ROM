.class public Lcom/google/android/apps/plus/views/MessageListItemViewImage;
.super Landroid/widget/RelativeLayout;
.source "MessageListItemViewImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/MessageListItemViewImage$OnMeasuredListener;
    }
.end annotation


# static fields
.field private static sDefaultUserImage:Landroid/graphics/Bitmap;

.field private static sFailedAuthorColor:I

.field private static sNormalAuthorColor:I


# instance fields
.field private mAuthorArrow:Landroid/widget/ImageView;

.field private mAuthorNameTextView:Landroid/widget/TextView;

.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mCancelButton:Landroid/widget/TextView;

.field private mFullResUrl:Ljava/lang/String;

.field private mGaiaId:Ljava/lang/String;

.field private mImageFrame:Landroid/view/View;

.field private mImageHeight:Ljava/lang/Integer;

.field private mImageWidth:Ljava/lang/Integer;

.field private mMeasuredListener:Lcom/google/android/apps/plus/views/MessageListItemViewImage$OnMeasuredListener;

.field private mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

.field private mMessageImageView:Lcom/google/android/apps/plus/views/EsImageView;

.field private mMessageRowId:J

.field private mMessageStatus:I

.field private mPosition:I

.field private mRetryButton:Landroid/widget/TextView;

.field private mShowAuthor:Z

.field private mShowStatus:Z

.field private mStatusImage:Landroid/widget/ImageView;

.field private mTimeSinceTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageWidth:Ljava/lang/Integer;

    .line 45
    iput-object v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageHeight:Ljava/lang/Integer;

    .line 58
    sget-object v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sDefaultUserImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_30

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sDefaultUserImage:Landroid/graphics/Bitmap;

    .line 61
    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sNormalAuthorColor:I

    .line 62
    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sFailedAuthorColor:I

    .line 64
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_30
    return-void
.end method

.method private updateStatusImages()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 172
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowStatus:Z

    if-eqz v0, :cond_75

    .line 173
    iget v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageStatus:I

    packed-switch v0, :pswitch_data_9c

    .line 202
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :goto_20
    iget v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    iget v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageStatus:I

    if-ne v0, v2, :cond_7b

    .line 214
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sFailedAuthorColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    :goto_44
    return-void

    .line 177
    :pswitch_45
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 184
    :pswitch_53
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 191
    :pswitch_61
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 196
    :pswitch_67
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 209
    :cond_75
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 220
    :cond_7b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sNormalAuthorColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowAuthor:Z

    if-eqz v0, :cond_96

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :goto_8b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_44

    .line 224
    :cond_96
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b

    .line 173
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_45
        :pswitch_45
        :pswitch_61
        :pswitch_53
        :pswitch_53
        :pswitch_67
        :pswitch_c
        :pswitch_45
        :pswitch_61
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 235
    iput-object v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mGaiaId:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    return-void
.end method

.method public getFullResUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mFullResUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImageWidth()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public hideAuthor()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowAuthor:Z

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->updateStatusImages()V

    .line 265
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_10

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mGaiaId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/MessageClickListener;->onUserImageClicked(Ljava/lang/String;)V

    .line 91
    :cond_f
    :goto_f
    return-void

    .line 84
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_20

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageRowId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/MessageClickListener;->onRetryButtonClicked(J)V

    goto :goto_f

    .line 86
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_30

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageRowId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/MessageClickListener;->onCancelButtonClicked(J)V

    goto :goto_f

    .line 88
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Lcom/google/android/apps/plus/views/EsImageView;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_f

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mFullResUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/AvatarView;->getGaiaId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/MessageClickListener;->onMediaImageClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public onFinishInflate()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 98
    const v0, 0x7f090156

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 99
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorArrow:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f090159

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f09015f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/EsImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Lcom/google/android/apps/plus/views/EsImageView;

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/EsImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f09015e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageFrame:Landroid/view/View;

    .line 105
    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f09015c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowStatus:Z

    .line 112
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowAuthor:Z

    .line 113
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 306
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageWidth:Ljava/lang/Integer;

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageHeight:Ljava/lang/Integer;

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMeasuredListener:Lcom/google/android/apps/plus/views/MessageListItemViewImage$OnMeasuredListener;

    if-eqz v0, :cond_24

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMeasuredListener:Lcom/google/android/apps/plus/views/MessageListItemViewImage$OnMeasuredListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage$OnMeasuredListener;->onMeasured(Landroid/view/View;)V

    .line 313
    :cond_24
    return-void
.end method

.method public setAuthorName(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public setGaiaId(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setImage(Ljava/lang/String;Lcom/google/android/apps/plus/content/ImageRequest;)V
    .registers 5
    .parameter "fullResUrl"
    .parameter "request"

    .prologue
    const/4 v1, 0x0

    .line 143
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mFullResUrl:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/EsImageView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "message"

    .prologue
    const/16 v1, 0x8

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setBackgroundResource(I)V

    .line 135
    return-void
.end method

.method public setMessageClickListener(Lcom/google/android/apps/plus/views/MessageClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    .line 75
    return-void
.end method

.method public setMessageRowId(J)V
    .registers 3
    .parameter "messageRowId"

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageRowId:J

    .line 125
    return-void
.end method

.method public setMessageStatus(IZ)V
    .registers 3
    .parameter "status"
    .parameter "showStatus"

    .prologue
    .line 166
    iput p1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageStatus:I

    .line 167
    iput-boolean p2, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowStatus:Z

    .line 168
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->updateStatusImages()V

    .line 169
    return-void
.end method

.method public setOnMeasureListener(Lcom/google/android/apps/plus/views/MessageListItemViewImage$OnMeasuredListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMeasuredListener:Lcom/google/android/apps/plus/views/MessageListItemViewImage$OnMeasuredListener;

    .line 71
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 246
    iput p1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mPosition:I

    .line 247
    return-void
.end method

.method public setTimeSince(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "timeSince"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public showAuthor()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowAuthor:Z

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->updateStatusImages()V

    .line 273
    return-void
.end method

.method public updateContentDescription()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v1, contentDescription:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 282
    .local v2, res:Landroid/content/res/Resources;
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowAuthor:Z

    if-eqz v4, :cond_30

    .line 283
    iget-object v4, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 284
    .local v0, authorName:Ljava/lang/CharSequence;
    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_30

    .line 285
    const v4, 0x7f080242

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .end local v0           #authorName:Ljava/lang/CharSequence;
    :cond_30
    iget-object v4, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 293
    .local v3, timeSince:Ljava/lang/CharSequence;
    if-eqz v3, :cond_51

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_51

    .line 294
    const v4, 0x7f080243

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_51
    const v4, 0x7f080246

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 302
    return-void
.end method
