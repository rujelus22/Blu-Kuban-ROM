.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HangoutRingingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HangoutCancelInvitationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 234
    const-string v4, "Hangout Invite Cancel Receiver got tickle"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 235
    const-string v4, "com.google.android.apps.hangout.NOTIFICATION"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 278
    :goto_d
    return-void

    .line 238
    :cond_e
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$400(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 239
    const-string v4, "Ignoring hangout ring cancellation since user already acted on it"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_d

    .line 242
    :cond_1c
    const-string v4, "cancel"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "cancel"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 244
    :cond_32
    const-string v4, "Ignoring hangout invitation tickle. This receiver only handles cancellations"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_d

    .line 248
    :cond_38
    const-string v4, "inviter_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, inviterId:Ljava/lang/String;
    const-string v4, "invitee_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, inviteeId:Ljava/lang/String;
    const-string v4, "hangout_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, hangoutId:Ljava/lang/String;
    const-string v4, "Incoming hangout cancel invitation:\nInviterId: %s\nInviteeId: %s\nHangoutId: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 256
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v2, :cond_66

    .line 257
    const-string v4, "Ignoring hangout cancel invitation tickle with invalid invitee account"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 259
    :cond_66
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring hangout cancel invitation tickle since user is logged in with a different account. Active: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tickle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 266
    :cond_96
    if-nez v1, :cond_9f

    .line 267
    const-string v4, "Ignoring hangout cancel invitation with missing hangout id"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 271
    :cond_9f
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v4

    if-eqz v4, :cond_c7

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 272
    const-string v4, "Cancelling hangout ringing."

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 273
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit()V
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    .line 274
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;->setResultCode(I)V

    goto/16 :goto_d

    .line 276
    :cond_c7
    const-string v4, "Ignoring hangout ring cancellation since hangout ids don\'t match"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_d
.end method
