.class public Lcom/google/android/apps/plus/hangout/HermesActivity$HermesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HermesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HermesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HermesReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 138
    const-string v0, "com.google.android.apps.hangout.HERMES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 139
    const-string v0, "inviter_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, inviterId:Ljava/lang/String;
    const-string v0, "invitee_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, inviteeId:Ljava/lang/String;
    const-string v0, "invite_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, inviteId:Ljava/lang/String;
    const-string v0, "instance_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 143
    .local v5, instanceId:J
    const-string v0, "inviter_muc_jid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, inviterMucJid:Ljava/lang/String;
    const-string v0, "invite_timestamp"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, inviteTimestamp:Ljava/lang/String;
    const-string v0, "Incoming Hermes tickle:\nInviterId: %s\nInviteeId: %s\nInviteId: %s\nInstanceId: %s\nInviterMucJid: %s\nTimestamp: %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v1, v11

    const/4 v11, 0x1

    aput-object v9, v1, v11

    const/4 v11, 0x2

    aput-object v4, v1, v11

    const/4 v11, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v1, v11

    const/4 v11, 0x4

    aput-object v3, v1, v11

    const/4 v11, 0x5

    aput-object v8, v1, v11

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, currentUserId:Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring Hermes tickle since user is logged in with a differentaccount. Active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tickle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 161
    .end local v2           #inviterId:Ljava/lang/String;
    .end local v3           #inviterMucJid:Ljava/lang/String;
    .end local v4           #inviteId:Ljava/lang/String;
    .end local v5           #instanceId:J
    .end local v7           #currentUserId:Ljava/lang/String;
    .end local v8           #inviteTimestamp:Ljava/lang/String;
    .end local v9           #inviteeId:Ljava/lang/String;
    :cond_7c
    :goto_7c
    return-void

    .line 154
    .restart local v2       #inviterId:Ljava/lang/String;
    .restart local v3       #inviterMucJid:Ljava/lang/String;
    .restart local v4       #inviteId:Ljava/lang/String;
    .restart local v5       #instanceId:J
    .restart local v7       #currentUserId:Ljava/lang/String;
    .restart local v8       #inviteTimestamp:Ljava/lang/String;
    .restart local v9       #inviteeId:Ljava/lang/String;
    :cond_7d
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getHermesActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v10

    .line 157
    .local v10, launchIntent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesReceiver;->setResultCode(I)V

    goto :goto_7c
.end method
