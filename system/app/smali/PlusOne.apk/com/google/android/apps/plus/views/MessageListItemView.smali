.class public Lcom/google/android/apps/plus/views/MessageListItemView;
.super Landroid/widget/RelativeLayout;
.source "MessageListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sFailedAuthorColor:I

.field private static sFailedMessageColor:I

.field private static sInitialized:Z

.field private static sNormalAuthorColor:I

.field private static sNormalMessageColor:I


# instance fields
.field private mAuthorArrow:Landroid/widget/ImageView;

.field private mAuthorNameTextView:Landroid/widget/TextView;

.field private mAvatarId:J

.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mCancelButton:Landroid/widget/TextView;

.field private mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

.field private mMessageRowId:J

.field private mMessageStatus:I

.field private mMessageTextView:Landroid/widget/TextView;

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
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/MessageListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget-boolean v1, Lcom/google/android/apps/plus/views/MessageListItemView;->sInitialized:Z

    if-nez v1, :cond_3a

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MessageListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/MessageListItemView;->sNormalAuthorColor:I

    .line 51
    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/MessageListItemView;->sNormalMessageColor:I

    .line 52
    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/MessageListItemView;->sFailedAuthorColor:I

    .line 53
    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/MessageListItemView;->sFailedMessageColor:I

    .line 54
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/MessageListItemView;->sInitialized:Z

    .line 56
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_3a
    return-void
.end method

.method private updateStatusImages()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 126
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mShowStatus:Z

    if-eqz v0, :cond_7c

    .line 127
    iget v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageStatus:I

    packed-switch v0, :pswitch_data_aa

    .line 156
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_20
    iget v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    iget v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageStatus:I

    if-ne v0, v2, :cond_82

    .line 168
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorNameTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/MessageListItemView;->sFailedAuthorColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/MessageListItemView;->sFailedMessageColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :goto_4b
    return-void

    .line 131
    :pswitch_4c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 138
    :pswitch_5a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 145
    :pswitch_68
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 150
    :pswitch_6e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 163
    :cond_7c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 175
    :cond_82
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorNameTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/MessageListItemView;->sNormalAuthorColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/MessageListItemView;->sNormalMessageColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mShowAuthor:Z

    if-eqz v0, :cond_a4

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :goto_99
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4b

    .line 180
    :cond_a4
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_99

    .line 127
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4c
        :pswitch_68
        :pswitch_5a
        :pswitch_5a
        :pswitch_6e
        :pswitch_c
        :pswitch_4c
        :pswitch_68
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAvatarId:J

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    return-void
.end method

.method public hideAuthor()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mShowAuthor:Z

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MessageListItemView;->updateStatusImages()V

    .line 225
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_10

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAvatarId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/MessageClickListener;->onUserImageClicked(J)V

    .line 74
    :cond_f
    :goto_f
    return-void

    .line 69
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mRetryButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_20

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageRowId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/MessageClickListener;->onRetryButtonClicked(J)V

    goto :goto_f

    .line 71
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    if-eqz v0, :cond_f

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageRowId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/MessageClickListener;->onCancelButtonClicked(J)V

    goto :goto_f
.end method

.method public onFinishInflate()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 81
    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 82
    const v0, 0x7f0d00e4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorArrow:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorNameTextView:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0d00e1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageTextView:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0d00e8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mStatusImage:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0d00e6

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mRetryButton:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mRetryButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mCancelButton:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mShowStatus:Z

    .line 93
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mShowAuthor:Z

    .line 94
    return-void
.end method

.method public setAuthorName(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public setAvatar(J)V
    .registers 4
    .parameter "avatarId"

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAvatarId:J

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/views/AvatarView;->setContactId(J)V

    .line 117
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MessageListItemView;->setBackgroundResource(I)V

    .line 108
    return-void
.end method

.method public setMessageClickListener(Lcom/google/android/apps/plus/views/MessageClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageClickListener:Lcom/google/android/apps/plus/views/MessageClickListener;

    .line 60
    return-void
.end method

.method public setMessageRowId(J)V
    .registers 3
    .parameter "messageRowId"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageRowId:J

    .line 98
    return-void
.end method

.method public setMessageStatus(IZ)V
    .registers 3
    .parameter "status"
    .parameter "showStatus"

    .prologue
    .line 120
    iput p1, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageStatus:I

    .line 121
    iput-boolean p2, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mShowStatus:Z

    .line 122
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MessageListItemView;->updateStatusImages()V

    .line 123
    return-void
.end method

.method public setTimeSince(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "timeSince"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public showAuthor()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mShowAuthor:Z

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MessageListItemView;->updateStatusImages()V

    .line 233
    return-void
.end method

.method public updateContentDescription()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v1, contentDescription:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MessageListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 242
    .local v3, res:Landroid/content/res/Resources;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mShowAuthor:Z

    if-eqz v5, :cond_30

    .line 243
    iget-object v5, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 244
    .local v0, authorName:Ljava/lang/CharSequence;
    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_30

    .line 245
    const v5, 0x7f070194

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .end local v0           #authorName:Ljava/lang/CharSequence;
    :cond_30
    iget-object v5, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 253
    .local v4, timeSince:Ljava/lang/CharSequence;
    if-eqz v4, :cond_51

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_51

    .line 254
    const v5, 0x7f070195

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_51
    iget-object v5, p0, Lcom/google/android/apps/plus/views/MessageListItemView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 260
    .local v2, message:Ljava/lang/CharSequence;
    if-eqz v2, :cond_6d

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_6d

    .line 261
    const v5, 0x7f070196

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/views/MessageListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method
