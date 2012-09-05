.class public Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;
.super Ljava/lang/Object;
.source "ParticipantsGalleryView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ParticipantsGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleCommandListener"
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "view"
    .parameter "account"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_d

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_d
    if-nez p2, :cond_17

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_17
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    .line 71
    iput-object p2, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 72
    return-void
.end method


# virtual methods
.method public onAvatarClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V
    .registers 11
    .parameter "avatarView"
    .parameter "participant"

    .prologue
    .line 79
    new-instance v2, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v2, v0, v1, p2}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V

    .line 81
    .local v2, menuHelper:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;->mView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/util/QuickActions;->show(Landroid/view/View;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/MenuItem$OnMenuItemClickListener;ZZ)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->avatarContextMenuDialog:Landroid/app/Dialog;

    .line 83
    return-void
.end method

.method public onAvatarDoubleClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V
    .registers 3
    .parameter "avatarView"
    .parameter "participant"

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;->onAvatarClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V

    .line 91
    return-void
.end method

.method public onShowParticipantList()V
    .registers 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onShowParticipantList is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
