.class public Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;
.super Landroid/widget/RelativeLayout;
.source "SuggestedPeopleListItemView.java"


# instance fields
.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mNameTextView:Landroid/widget/TextView;

.field private mPersonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 34
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 35
    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 36
    return-void
.end method

.method public setParticipantName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 39
    if-nez p1, :cond_9

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_8
    return-void

    .line 44
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public setPersonId(Ljava/lang/String;)V
    .registers 5
    .parameter "personId"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mPersonId:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setContactId(J)V

    .line 50
    return-void
.end method
