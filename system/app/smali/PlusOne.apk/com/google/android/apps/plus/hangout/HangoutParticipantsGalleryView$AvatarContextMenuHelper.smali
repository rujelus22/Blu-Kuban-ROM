.class Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;
.super Ljava/lang/Object;
.source "HangoutParticipantsGalleryView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarContextMenuHelper"
.end annotation


# instance fields
.field private final meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private final participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/wireless/realtimechat/proto/Data$Participant;Lcom/google/android/apps/plus/views/OverlayedAvatarView;)V
    .registers 5
    .parameter
    .parameter "meetingMember"
    .parameter "participant"
    .parameter "avatarView"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 82
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 83
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 90
    new-instance v5, Landroid/view/MenuInflater;

    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const v8, 0x7f10000e

    invoke-virtual {v5, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 93
    const v5, 0x7f0d01d3

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 94
    .local v2, profileItem:Landroid/view/MenuItem;
    const v5, 0x7f0d01d4

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 95
    .local v1, pinVideoItem:Landroid/view/MenuItem;
    const v5, 0x7f0d01d5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 96
    .local v4, unpinVideoItem:Landroid/view/MenuItem;
    const v5, 0x7f0d01d6

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 97
    .local v3, remoteMuteItem:Landroid/view/MenuItem;
    const v5, 0x7f0d01d7

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 99
    .local v0, blockItem:Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-nez v5, :cond_50

    .line 100
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 101
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 102
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 103
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 104
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 126
    :goto_4f
    return-void

    .line 106
    :cond_50
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 108
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {v8}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$100(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v8

    if-eq v5, v8, :cond_84

    .line 109
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    :goto_6c
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v5

    if-nez v5, :cond_88

    move v5, v6

    :goto_75
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 118
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelfProfile()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 119
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4f

    .line 111
    :cond_84
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6c

    :cond_88
    move v5, v7

    .line 116
    goto :goto_75

    .line 123
    :cond_8a
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v5

    if-nez v5, :cond_96

    :goto_92
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4f

    :cond_96
    move v6, v7

    goto :goto_92
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_6e

    .line 160
    :goto_9
    return v2

    .line 135
    :pswitch_a
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$300(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Lcom/google/android/apps/plus/hangout/HangoutTile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v6, v2}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 137
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    .end local v1           #intent:Landroid/content/Intent;
    :goto_2d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #setter for: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarContextMenuDialog:Landroid/app/Dialog;
    invoke-static {v2, v6}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$602(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 160
    const/4 v2, 0x1

    goto :goto_9

    .line 140
    :pswitch_34
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$400(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_2d

    .line 143
    :pswitch_3c
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->unpinVideo()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$500(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)V

    goto :goto_2d

    .line 146
    :pswitch_42
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->remoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_2d

    .line 150
    :pswitch_56
    new-instance v0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;-><init>(ZLjava/io/Serializable;)V

    .line 152
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/BlockPersonDialog;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2d

    .line 133
    nop

    :pswitch_data_6e
    .packed-switch 0x7f0d01d3
        :pswitch_a
        :pswitch_34
        :pswitch_3c
        :pswitch_42
        :pswitch_56
    .end packed-switch
.end method
