.class public Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "ModifyServerSettingsHandler.java"


# static fields
.field static final ID_FAILURE:I = 0x3ee

.field static final ID_MODIFY_SETTINGS:I = 0x3eb

.field static final ID_MODIFY_SETTINGS_RESULT:I = 0x3ec

.field static final ID_RETRIEVE_SETTINGS:I = 0x3e9

.field static final ID_RETRIEVE_SETTINGS_RESULT:I = 0x3ea

.field static final ID_START:I = 0x3e8

.field static final ID_SUCCESS:I = 0x3ed


# instance fields
.field private final activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private final serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private final settingsModifier:Lcom/google/android/apps/googlevoice/activity/ServerSettingsModifier;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/service/ActivityProxy;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/activity/ServerSettingsModifier;Lcom/google/android/apps/common/log/GLog;)V
    .registers 5
    .parameter "activityHelper"
    .parameter "serverSettings"
    .parameter "settingsModifier"
    .parameter "log"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    .line 37
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 38
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->settingsModifier:Lcom/google/android/apps/googlevoice/activity/ServerSettingsModifier;

    .line 39
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->log:Lcom/google/android/apps/common/log/GLog;

    .line 40
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "message"

    .prologue
    const/16 v7, 0x3ee

    const/16 v6, 0x3ed

    const/4 v5, 0x0

    .line 44
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "SmsNotificationSettingHandler.handleMessage(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 46
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_ae

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 103
    :cond_3a
    :goto_3a
    return-void

    .line 48
    :pswitch_3b
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->sendEmptyMessage(I)Z

    goto :goto_3a

    .line 52
    :pswitch_41
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    const/16 v2, 0x3ea

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    goto :goto_3a

    .line 56
    :pswitch_4d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    .line 57
    .local v0, updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->isCompletedOrException()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 58
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->hasException()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 59
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->sendEmptyMessage(I)Z

    goto :goto_3a

    .line 61
    :cond_61
    const/16 v1, 0x3eb

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->sendEmptyMessage(I)Z

    goto :goto_3a

    .line 68
    .end local v0           #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    :pswitch_67
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->settingsModifier:Lcom/google/android/apps/googlevoice/activity/ServerSettingsModifier;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/ServerSettingsModifier;->modifySettings()Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v0

    .line 69
    .restart local v0       #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    if-eqz v0, :cond_7b

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    const/16 v2, 0x3ec

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->update(Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;Landroid/os/Message;)V

    goto :goto_3a

    .line 72
    :cond_7b
    invoke-virtual {p0, v6}, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->sendEmptyMessage(I)Z

    goto :goto_3a

    .line 78
    .end local v0           #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    :pswitch_7f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    .line 79
    .restart local v0       #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->isCompletedOrException()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 80
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->hasException()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 81
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->sendEmptyMessage(I)Z

    goto :goto_3a

    .line 83
    :cond_93
    invoke-virtual {p0, v6}, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->sendEmptyMessage(I)Z

    goto :goto_3a

    .line 90
    .end local v0           #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    :pswitch_97
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->finish()V

    goto :goto_3a

    .line 95
    :pswitch_a3
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1, v5}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->finish()V

    goto :goto_3a

    .line 46
    :pswitch_data_ae
    .packed-switch 0x3e8
        :pswitch_3b
        :pswitch_41
        :pswitch_4d
        :pswitch_67
        :pswitch_7f
        :pswitch_97
        :pswitch_a3
    .end packed-switch
.end method
