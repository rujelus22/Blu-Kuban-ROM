.class public Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;
.super Landroid/support/v4/app/Fragment;
.source "ParticipantsGalleryFragment.java"


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mBackgroundColor:Ljava/lang/Integer;

.field private mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

.field private mEmptyMessage:Ljava/lang/String;

.field private mParticipantListButtonVisibility:Z

.field private mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mParticipantListButtonVisibility:Z

    return-void
.end method


# virtual methods
.method public addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    .registers 4
    .parameter "inflater"
    .parameter "participant"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    return-object v0
.end method

.method public addParticipants(Ljava/util/Collection;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, participants:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 122
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 123
    .local v2, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    goto :goto_c

    .line 125
    .end local v2           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_1c
    return-void
.end method

.method public getParticipantsGalleryView()Lcom/google/android/apps/plus/views/ParticipantsGalleryView;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mBackgroundColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setBackgroundColor(I)V

    .line 66
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mEmptyMessage:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mEmptyMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setEmptyMessage(Ljava/lang/String;)V

    .line 70
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_30

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 73
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    if-eqz v0, :cond_3b

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V

    .line 76
    :cond_3b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mParticipantListButtonVisibility:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setParticipantListButtonVisibility(Z)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    return-object v0
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 8
    .parameter "activity"
    .parameter "attrs"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    sget-object v1, Lcom/google/android/apps/plus/R$styleable;->ParticipantsGalleryFragment:[I

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, styledAttrs:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 46
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mBackgroundColor:Ljava/lang/Integer;

    .line 49
    :cond_18
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 50
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mEmptyMessage:Ljava/lang/String;

    .line 53
    :cond_24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->dismissAvatarMenuDialog()V

    .line 84
    return-void
.end method

.method public removeAllParticipants()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->removeAllParticipants()V

    .line 114
    return-void
.end method

.method public setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    if-eqz v0, :cond_b

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 96
    :cond_b
    return-void
.end method

.method public setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V
    .registers 3
    .parameter "commandListener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    if-eqz v0, :cond_b

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V

    .line 103
    :cond_b
    return-void
.end method

.method public setParticipantListButtonVisibility(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mParticipantListButtonVisibility:Z

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    if-eqz v0, :cond_b

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setParticipantListButtonVisibility(Z)V

    .line 110
    :cond_b
    return-void
.end method

.method public setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, participants:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    .local p2, activeParticipantsInTile:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, activeParticipantsInAnyTile:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_7

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 134
    :cond_7
    return-void
.end method
