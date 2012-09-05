.class public Lcom/google/android/apps/plus/views/ConversationListItemView;
.super Landroid/widget/RelativeLayout;
.source "ConversationListItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static sBackgroundChecked:Landroid/graphics/drawable/Drawable;

.field private static sBackgroundUnchecked:I

.field private static sDefaultUserImage:Landroid/graphics/Bitmap;

.field private static sInitialized:Z


# instance fields
.field private mAvatarId:J

.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mChecked:Z

.field private mGroupView:Landroid/widget/ImageView;

.field private mLastMessageTextView:Landroid/widget/TextView;

.field private mMuted:Z

.field private mMutedIcon:Landroid/widget/ImageView;

.field private mNameTextView:Landroid/widget/TextView;

.field private mTimeSinceTextView:Landroid/widget/TextView;

.field private mUnreadCount:I

.field private mUnreadCountTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-boolean v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sInitialized:Z

    if-nez v1, :cond_25

    .line 51
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sInitialized:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sBackgroundChecked:Landroid/graphics/drawable/Drawable;

    .line 55
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sBackgroundUnchecked:I

    .line 58
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_25
    iput v2, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCount:I

    .line 59
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMuted:Z

    .line 62
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarId:J

    .line 64
    sget-object v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_46

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020034

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    .line 69
    :cond_46
    return-void
.end method

.method private refreshUnreadCountView()V
    .registers 3

    .prologue
    .line 116
    iget v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCount:I

    if-nez v0, :cond_c

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_b
    return-void

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mLastMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarId:J

    .line 142
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mChecked:Z

    return v0
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 76
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mGroupView:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 78
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mLastMessageTextView:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMutedIcon:Landroid/widget/ImageView;

    .line 83
    return-void
.end method

.method public setAvatarId(J)V
    .registers 4
    .parameter "avatarId"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/views/AvatarView;->setContactId(J)V

    .line 130
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mChecked:Z

    if-eq p1, v0, :cond_10

    .line 174
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mChecked:Z

    .line 175
    if-eqz p1, :cond_11

    .line 176
    sget-object v0, Lcom/google/android/apps/plus/views/ConversationListItemView;->sBackgroundChecked:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->invalidate()V

    .line 183
    :cond_10
    return-void

    .line 178
    :cond_11
    sget v0, Lcom/google/android/apps/plus/views/ConversationListItemView;->sBackgroundUnchecked:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setBackgroundColor(I)V

    goto :goto_d
.end method

.method public setConversationName(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public setGroup(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 124
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mGroupView:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    if-eqz p1, :cond_15

    :goto_f
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 126
    return-void

    :cond_13
    move v0, v2

    .line 124
    goto :goto_8

    :cond_15
    move v2, v1

    .line 125
    goto :goto_f
.end method

.method public setLastMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mLastMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public setMuted(Z)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMuted:Z

    if-eq v0, p1, :cond_13

    .line 105
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMuted:Z

    .line 106
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMuted:Z

    if-eqz v0, :cond_14

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMutedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    :goto_10
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->refreshUnreadCountView()V

    .line 113
    :cond_13
    return-void

    .line 109
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMutedIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10
.end method

.method public setTimeSince(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "timeSince"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setUnreadCount(I)V
    .registers 4
    .parameter "unreadCount"

    .prologue
    .line 98
    iput p1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCount:I

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->refreshUnreadCountView()V

    .line 101
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setChecked(Z)V

    .line 166
    return-void

    .line 165
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public updateContentDescription()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v0, contentDescription:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 200
    .local v3, res:Landroid/content/res/Resources;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMuted:Z

    if-eqz v5, :cond_1e

    .line 201
    const v5, 0x7f070193

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1e
    iget v5, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCount:I

    if-lez v5, :cond_3b

    .line 207
    const v5, 0x7f070191

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_3b
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 214
    .local v2, name:Ljava/lang/CharSequence;
    if-eqz v2, :cond_5c

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5c

    .line 215
    const v5, 0x7f07018f

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_5c
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 221
    .local v4, timeSince:Ljava/lang/CharSequence;
    if-eqz v4, :cond_7d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_7d

    .line 222
    const v5, 0x7f070190

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_7d
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mLastMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 229
    .local v1, lastMessage:Ljava/lang/CharSequence;
    if-eqz v1, :cond_9e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_9e

    .line 230
    const v5, 0x7f070192

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method
