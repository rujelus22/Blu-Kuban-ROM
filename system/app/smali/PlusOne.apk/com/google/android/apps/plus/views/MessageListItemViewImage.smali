.class public Lcom/google/android/apps/plus/views/MessageListItemViewImage;
.super Landroid/widget/RelativeLayout;
.source "MessageListItemViewImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sDefaultUserImage:Landroid/graphics/Bitmap;

.field private static sFailedAuthorColor:I

.field private static sNormalAuthorColor:I


# instance fields
.field private mAuthorArrow:Landroid/widget/ImageView;

.field private mAuthorNameTextView:Landroid/widget/TextView;

.field private mAvatarId:J

.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mCancelButton:Landroid/widget/TextView;

.field private mImageFrame:Landroid/view/View;

.field private mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

.field private mMessageImageView:Landroid/widget/ImageView;

.field private mMessageRowId:J

.field private mMessageStatus:I

.field private mRetryButton:Landroid/widget/TextView;

.field private mShowAuthor:Z

.field private mShowStatus:Z

.field private mStatusImage:Landroid/widget/ImageView;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mTimeSinceTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sDefaultUserImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2e

    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020034

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sDefaultUserImage:Landroid/graphics/Bitmap;

    .line 53
    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sNormalAuthorColor:I

    .line 54
    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sFailedAuthorColor:I

    .line 56
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_2e
    return-void
.end method

.method private updateStatusImages()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 149
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowStatus:Z

    if-eqz v0, :cond_75

    .line 150
    iget v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageStatus:I

    packed-switch v0, :pswitch_data_9c

    .line 179
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :goto_20
    iget v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    iget v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageStatus:I

    if-ne v0, v2, :cond_7b

    .line 191
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sFailedAuthorColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :goto_44
    return-void

    .line 154
    :pswitch_45
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 161
    :pswitch_53
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 168
    :pswitch_61
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 173
    :pswitch_67
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 186
    :cond_75
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 197
    :cond_7b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->sNormalAuthorColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowAuthor:Z

    if-eqz v0, :cond_96

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :goto_8b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_44

    .line 201
    :cond_96
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b

    .line 150
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

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarId:J

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    return-void
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hideAuthor()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowAuthor:Z

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->updateStatusImages()V

    .line 246
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_10

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/MessageClickListener;->onUserImageClicked(J)V

    .line 76
    :cond_f
    :goto_f
    return-void

    .line 69
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_20

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageRowId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/MessageClickListener;->onRetryButtonClicked(J)V

    goto :goto_f

    .line 71
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_30

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageRowId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/MessageClickListener;->onCancelButtonClicked(J)V

    goto :goto_f

    .line 73
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_f

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mThumbnailUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/MessageClickListener;->onMediaImageClick(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public onFinishInflate()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 83
    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 84
    const v0, 0x7f0d00e4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorArrow:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageFrame:Landroid/view/View;

    .line 90
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0d00e8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mStatusImage:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0d00e6

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowStatus:Z

    .line 97
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowAuthor:Z

    .line 98
    return-void
.end method

.method public setAuthorName(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public setAvatar(J)V
    .registers 4
    .parameter "avatarId"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/views/AvatarView;->setContactId(J)V

    .line 140
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "url"
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 121
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mThumbnailUrl:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mImageFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public setMessageClickListener(Lcom/google/android/apps/plus/views/MessageClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    .line 60
    return-void
.end method

.method public setMessageRowId(J)V
    .registers 3
    .parameter "messageRowId"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageRowId:J

    .line 102
    return-void
.end method

.method public setMessageStatus(IZ)V
    .registers 3
    .parameter "status"
    .parameter "showStatus"

    .prologue
    .line 143
    iput p1, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageStatus:I

    .line 144
    iput-boolean p2, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowStatus:Z

    .line 145
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->updateStatusImages()V

    .line 146
    return-void
.end method

.method public setTimeSince(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "timeSince"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public showAuthor()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowAuthor:Z

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->updateStatusImages()V

    .line 254
    return-void
.end method

.method public updateContentDescription()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v1, contentDescription:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 263
    .local v2, res:Landroid/content/res/Resources;
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mShowAuthor:Z

    if-eqz v4, :cond_30

    .line 264
    iget-object v4, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 265
    .local v0, authorName:Ljava/lang/CharSequence;
    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_30

    .line 266
    const v4, 0x7f070194

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .end local v0           #authorName:Ljava/lang/CharSequence;
    :cond_30
    iget-object v4, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 274
    .local v3, timeSince:Ljava/lang/CharSequence;
    if-eqz v3, :cond_51

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_51

    .line 275
    const v4, 0x7f070195

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_51
    const v4, 0x7f070198

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    return-void
.end method

.method public updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->mMessageImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    return-void
.end method
