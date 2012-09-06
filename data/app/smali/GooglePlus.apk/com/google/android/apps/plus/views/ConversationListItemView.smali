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
.field private mAvatarFullView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mAvatarLeftFullView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mAvatarLowerLeftView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mAvatarLowerRightView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mAvatarUpperLeftView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mAvatarUpperRightView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mChecked:Z

.field private mLastMessageTextView:Landroid/widget/TextView;

.field private mMuted:Z

.field private mMutedIcon:Landroid/widget/ImageView;

.field private mNameTextView:Landroid/widget/TextView;

.field private mPosition:I

.field private mTimeSinceTextView:Landroid/widget/TextView;

.field private mUnreadCount:I

.field private mUnreadCountTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-boolean v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sInitialized:Z

    if-nez v1, :cond_25

    .line 55
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sInitialized:Z

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sBackgroundChecked:Landroid/graphics/drawable/Drawable;

    .line 59
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sBackgroundUnchecked:I

    .line 62
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_25
    iput v2, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCount:I

    .line 63
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMuted:Z

    .line 65
    sget-object v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_33

    .line 66
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/ConversationListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    .line 68
    :cond_33
    return-void
.end method

.method private refreshUnreadCountView()V
    .registers 3

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCount:I

    if-nez v0, :cond_c

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_b
    return-void

    .line 122
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

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mLastMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mChecked:Z

    return v0
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 75
    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarFullView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 76
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLeftFullView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 77
    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 78
    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 79
    const v0, 0x7f09008f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperRightView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 80
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerRightView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 81
    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mLastMessageTextView:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMutedIcon:Landroid/widget/ImageView;

    .line 86
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mChecked:Z

    if-eq p1, v0, :cond_10

    .line 208
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mChecked:Z

    .line 209
    if-eqz p1, :cond_11

    .line 210
    sget-object v0, Lcom/google/android/apps/plus/views/ConversationListItemView;->sBackgroundChecked:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->invalidate()V

    .line 217
    :cond_10
    return-void

    .line 212
    :cond_11
    sget v0, Lcom/google/android/apps/plus/views/ConversationListItemView;->sBackgroundUnchecked:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setBackgroundColor(I)V

    goto :goto_d
.end method

.method public setConversationName(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public setLastMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mLastMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public setMuted(Z)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMuted:Z

    if-eq v0, p1, :cond_13

    .line 108
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMuted:Z

    .line 109
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMuted:Z

    if-eqz v0, :cond_14

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMutedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    :goto_10
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->refreshUnreadCountView()V

    .line 116
    :cond_13
    return-void

    .line 112
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMutedIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10
.end method

.method public setParticipantsId(Ljava/util/List;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, participantIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 127
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_32

    .line 128
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLeftFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 169
    :cond_31
    :goto_31
    return-void

    .line 135
    :cond_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_62

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLeftFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    goto :goto_31

    .line 143
    :cond_62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_6e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_ba

    .line 144
    :cond_6e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLeftFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLeftFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_ae

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 156
    :goto_a8
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    goto :goto_31

    .line 154
    :cond_ae
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    goto :goto_a8

    .line 157
    :cond_ba
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_31

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLeftFullView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerLeftView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarUpperRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mAvatarLowerRightView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    goto/16 :goto_31
.end method

.method public setPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 184
    iput p1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mPosition:I

    .line 185
    return-void
.end method

.method public setTimeSince(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "timeSince"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public setUnreadCount(I)V
    .registers 4
    .parameter "unreadCount"

    .prologue
    .line 101
    iput p1, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCount:I

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->refreshUnreadCountView()V

    .line 104
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setChecked(Z)V

    .line 200
    return-void

    .line 199
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public updateContentDescription()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, contentDescription:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 234
    .local v3, res:Landroid/content/res/Resources;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mMuted:Z

    if-eqz v5, :cond_1e

    .line 235
    const v5, 0x7f080241

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_1e
    iget v5, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCount:I

    if-lez v5, :cond_3b

    .line 241
    const v5, 0x7f08023f

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mUnreadCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_3b
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 248
    .local v2, name:Ljava/lang/CharSequence;
    if-eqz v2, :cond_5c

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5c

    .line 249
    const v5, 0x7f08023d

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_5c
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mTimeSinceTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 255
    .local v4, timeSince:Ljava/lang/CharSequence;
    if-eqz v4, :cond_7d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_7d

    .line 256
    const v5, 0x7f08023e

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_7d
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ConversationListItemView;->mLastMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 263
    .local v1, lastMessage:Ljava/lang/CharSequence;
    if-eqz v1, :cond_9e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_9e

    .line 264
    const v5, 0x7f080240

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/views/ConversationListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method
