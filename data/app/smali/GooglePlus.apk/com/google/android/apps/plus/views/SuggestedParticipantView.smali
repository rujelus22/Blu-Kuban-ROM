.class public Lcom/google/android/apps/plus/views/SuggestedParticipantView;
.super Landroid/widget/RelativeLayout;
.source "SuggestedParticipantView.java"


# instance fields
.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mHeaderView:Landroid/view/View;

.field private mParticipantName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->mParticipantName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 40
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 41
    const v0, 0x7f09026c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->mParticipantName:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->mHeaderView:Landroid/view/View;

    .line 43
    return-void
.end method

.method public setHeaderVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void

    .line 59
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setParticipantId(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setParticipantName(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->mParticipantName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
