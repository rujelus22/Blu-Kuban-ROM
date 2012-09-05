.class Lcom/google/android/apps/plus/hangout/HermesActivity$4;
.super Ljava/lang/Object;
.source "HermesActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HermesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/view/View;I)V
    .registers 6
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v2, 0x0

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call controls receive info from slider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 698
    packed-switch p2, :pswitch_data_8e

    .line 721
    :goto_1a
    return-void

    .line 700
    :pswitch_1b
    const-string v0, "Accepting invitation"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccepted:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$202(Lcom/google/android/apps/plus/hangout/HermesActivity;Z)Z

    .line 702
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->startDuration()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2200(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 703
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->hideCallStatus()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2700(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 704
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingTone()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$600(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 705
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->sendInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3600(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)V

    .line 706
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mUpgradeToHangoutMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2800(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->startMeetingMedia()V

    .line 708
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mSlidingTabControl:Lcom/google/android/apps/plus/widget/SlidingTab;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2300(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/widget/SlidingTab;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/widget/SlidingTab;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mEndCallButton:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1700(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallOptionsMenu:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2900(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V

    goto :goto_1a

    .line 716
    :pswitch_7b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->sendInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3600(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)V

    .line 717
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingTone()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$600(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 718
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->exitHermes()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$700(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    goto :goto_1a

    .line 698
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_7b
    .end packed-switch
.end method
