.class public Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;
.super Landroid/widget/RelativeLayout;
.source "SuggestedPeopleListItemView.java"


# instance fields
.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mCheckIndicator:Landroid/view/View;

.field private mNameTextView:Landroid/widget/TextView;

.field private mPersonId:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 36
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 37
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f09026e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mCheckIndicator:Landroid/view/View;

    .line 39
    return-void
.end method

.method public setChecked(Z)V
    .registers 4
    .parameter "checked"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mCheckIndicator:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    return-void

    .line 80
    :cond_9
    const/4 v0, 0x4

    goto :goto_5
.end method

.method public setParticipantName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 42
    if-nez p1, :cond_9

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_8
    return-void

    .line 47
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public setPersonId(Ljava/lang/String;)V
    .registers 4
    .parameter "personId"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mPersonId:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 69
    iput p1, p0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->mPosition:I

    .line 70
    return-void
.end method
