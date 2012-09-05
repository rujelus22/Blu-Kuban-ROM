.class Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;
.super Ljava/lang/Object;
.source "ParticipantsGalleryView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ParticipantsGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvatarContextMenuHelper"
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mContext:Landroid/content/Context;

.field private final mParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "participant"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 116
    iput-object p3, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;->mParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 117
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 124
    new-instance v1, Landroid/view/MenuInflater;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const v2, 0x7f10000a

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 128
    const v1, 0x7f0d01ce

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 129
    .local v0, item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;->mParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 130
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 131
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;->mParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    const/4 v1, 0x1

    return v1
.end method
