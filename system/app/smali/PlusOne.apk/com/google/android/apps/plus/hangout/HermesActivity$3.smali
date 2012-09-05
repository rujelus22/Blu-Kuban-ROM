.class Lcom/google/android/apps/plus/hangout/HermesActivity$3;
.super Ljava/lang/Object;
.source "HermesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 668
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 671
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 672
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingBackTone()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$100(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 673
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccepted:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$200(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 676
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->CANCELED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->sendInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)V
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$300(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)V

    .line 679
    :cond_1c
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMembers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 680
    .local v1, otherMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kicking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mucjid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 682
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Initiator ended call"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->kickMeetingMember(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 686
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #otherMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_74
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->exitHermes()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$700(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 687
    return-void
.end method
