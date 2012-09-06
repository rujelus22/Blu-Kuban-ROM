.class Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;
.super Ljava/lang/Object;
.source "TabletFilmStripView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/TabletFilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParticipantContextMenuHelper"
.end annotation


# instance fields
.field private final mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter
    .parameter "meetingMember"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 215
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 14
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x1

    .line 222
    new-instance v7, Landroid/view/MenuInflater;

    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const v8, 0x7f10001a

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 225
    const v7, 0x7f0902da

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 226
    .local v3, profileItem:Landroid/view/MenuItem;
    const v7, 0x7f0902db

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 227
    .local v2, pinVideoItem:Landroid/view/MenuItem;
    const v7, 0x7f0902dc

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 228
    .local v6, unpinVideoItem:Landroid/view/MenuItem;
    const v7, 0x7f0902dd

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 229
    .local v5, remoteMuteItem:Landroid/view/MenuItem;
    const v7, 0x7f0902de

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 231
    .local v4, remoteMuteDisabledItem:Landroid/view/MenuItem;
    const v7, 0x7f0902df

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 232
    .local v1, blockItem:Landroid/view/MenuItem;
    const v7, 0x7f0902e0

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 235
    .local v0, blockDisabledItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 237
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #getter for: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {v8}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$1000(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v8

    if-eq v7, v8, :cond_8a

    .line 238
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 245
    :goto_5f
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v7

    if-nez v7, :cond_8e

    instance-of v7, p2, Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    if-eqz v7, :cond_8e

    check-cast p2, Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->isAudioMuteStatusShowing()Z

    move-result v7

    if-nez v7, :cond_8e

    .line 248
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    :goto_76
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelfProfile()Z

    move-result v7

    if-nez v7, :cond_86

    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v7

    if-eqz v7, :cond_92

    .line 256
    :cond_86
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 260
    :goto_89
    return-void

    .line 240
    .restart local p2
    :cond_8a
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5f

    .line 250
    .end local p2
    :cond_8e
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_76

    .line 258
    :cond_92
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_89
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_76

    .line 295
    :goto_9
    :pswitch_9
    return v2

    .line 269
    :pswitch_a
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #getter for: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$400(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Lcom/google/android/apps/plus/hangout/HangoutTile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 271
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 293
    .end local v1           #intent:Landroid/content/Intent;
    :goto_2d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #getter for: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mDismissMenuTimer:Landroid/os/CountDownTimer;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$1300(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Landroid/os/CountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 294
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #setter for: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mContextMenuDialog:Landroid/app/Dialog;
    invoke-static {v2, v5}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$1402(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 295
    const/4 v2, 0x1

    goto :goto_9

    .line 274
    :pswitch_3d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$1100(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_2d

    .line 277
    :pswitch_45
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->unpinVideo()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$1200(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)V

    goto :goto_2d

    .line 280
    :pswitch_4b
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->remoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_2d

    .line 284
    :pswitch_5f
    new-instance v0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->mMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;-><init>(ZLjava/io/Serializable;)V

    .line 286
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/BlockPersonDialog;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2d

    .line 267
    :pswitch_data_76
    .packed-switch 0x7f0902da
        :pswitch_a
        :pswitch_3d
        :pswitch_45
        :pswitch_4b
        :pswitch_9
        :pswitch_5f
    .end packed-switch
.end method
