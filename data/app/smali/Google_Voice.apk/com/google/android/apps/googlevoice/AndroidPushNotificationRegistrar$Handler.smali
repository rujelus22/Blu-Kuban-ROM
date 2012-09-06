.class Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;
.super Landroid/os/Handler;
.source "AndroidPushNotificationRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;-><init>(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "message"

    .prologue
    .line 168
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->log:Lcom/google/android/apps/common/log/GLog;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$100(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v8

    const-string v9, "Handler.handleMessage(%d)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 169
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_234

    .line 283
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 285
    :goto_23
    return-void

    .line 171
    :sswitch_24
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    .line 172
    .local v6, request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$200(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createRegisterDestinationRpc()Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;

    move-result-object v5

    .line 174
    .local v5, registerDeviceRpc:Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;
    invoke-static {}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$300()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;->setType(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;)V

    .line 175
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    invoke-virtual {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->getRoutingInfo()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;->setRoutingInfo(Ljava/lang/String;)V

    .line 178
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidPrimaryId:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$400(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;->setAndroidPrimaryId(Ljava/lang/String;)V

    .line 179
    const v8, 0x7fffffff

    const-string v9, "com.google.android.apps.googlevoice.INBOX_NOTIFICATION"

    invoke-interface {v5, v8, v9}, Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;->addEventPayload(ILjava/lang/String;)V

    .line 180
    iput-object v5, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;

    .line 181
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->handler:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$500(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;

    move-result-object v8

    const/16 v9, 0x3ea

    invoke-virtual {v8, v9, v6}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;->submit(Landroid/os/Message;)V

    goto :goto_23

    .line 185
    .end local v5           #registerDeviceRpc:Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;
    .end local v6           #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    :sswitch_69
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    .line 186
    .restart local v6       #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    iget-object v5, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;

    check-cast v5, Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;

    .line 187
    .restart local v5       #registerDeviceRpc:Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;

    .line 188
    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;->hasException()Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 189
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onFailure:Landroid/os/Message;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;->getException()Ljava/lang/Exception;

    move-result-object v9

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onFailure:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 198
    :goto_87
    const/4 v5, 0x0

    .line 199
    const/4 v6, 0x0

    .line 200
    goto :goto_23

    .line 192
    :cond_8a
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$200(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 193
    .local v2, now:J
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$600(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v8

    invoke-interface {v8, v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setInboxNotificationRegistrationTimestamp(J)V

    .line 194
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$600(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->getRoutingInfo()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setInboxNotificationRoutingInfo(Ljava/lang/String;)V

    .line 195
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$600(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidConfigurePushNotifications(Z)V

    .line 196
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onSuccess:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_87

    .line 203
    .end local v2           #now:J
    .end local v5           #registerDeviceRpc:Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;
    .end local v6           #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    :sswitch_c0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    .line 204
    .restart local v6       #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$200(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUnregisterDestinationRpc()Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;

    move-result-object v7

    .line 206
    .local v7, unregisterDeviceRpc:Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;
    const v8, 0x7fffffff

    invoke-interface {v7, v8}, Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;->addEvent(I)V

    .line 207
    invoke-static {}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$300()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;->setType(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;)V

    .line 208
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    invoke-virtual {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->getRoutingInfo()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;->setRoutingInfo(Ljava/lang/String;)V

    .line 209
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidPrimaryId:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$400(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;->setAndroidPrimaryId(Ljava/lang/String;)V

    .line 210
    iput-object v7, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;

    .line 211
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->handler:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$500(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;

    move-result-object v8

    const/16 v9, 0x3f4

    invoke-virtual {v8, v9, v6}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;->submit(Landroid/os/Message;)V

    goto/16 :goto_23

    .line 215
    .end local v6           #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    .end local v7           #unregisterDeviceRpc:Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;
    :sswitch_104
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    .line 216
    .restart local v6       #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    iget-object v7, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;

    check-cast v7, Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;

    .line 217
    .restart local v7       #unregisterDeviceRpc:Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;

    .line 218
    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;->hasException()Z

    move-result v8

    if-eqz v8, :cond_126

    .line 219
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onFailure:Landroid/os/Message;

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;->getException()Ljava/lang/Exception;

    move-result-object v9

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onFailure:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 227
    :goto_122
    const/4 v7, 0x0

    .line 228
    const/4 v6, 0x0

    .line 229
    goto/16 :goto_23

    .line 222
    :cond_126
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$600(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/VoicePreferences;->removeInboxNotificationRegistrationTimestamp()V

    .line 223
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$600(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/VoicePreferences;->removeInboxNotificationRoutingInfo()V

    .line 224
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$600(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidConfigurePushNotifications(Z)V

    .line 225
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onSuccess:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_122

    .line 232
    .end local v6           #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    .end local v7           #unregisterDeviceRpc:Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;
    :sswitch_148
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    .line 233
    .restart local v6       #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$200(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createCheckinRpc()Lcom/google/android/apps/googlevoice/net/CheckinRpc;

    move-result-object v0

    .line 235
    .local v0, checkinRpc:Lcom/google/android/apps/googlevoice/net/CheckinRpc;
    invoke-static {}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$300()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/google/android/apps/googlevoice/net/CheckinRpc;->setType(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;)V

    .line 236
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    invoke-virtual {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->getRoutingInfo()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/google/android/apps/googlevoice/net/CheckinRpc;->setRoutingInfo(Ljava/lang/String;)V

    .line 237
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidPrimaryId:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$400(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/google/android/apps/googlevoice/net/CheckinRpc;->setAndroidPrimaryId(Ljava/lang/String;)V

    .line 238
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->checkinReason:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    invoke-interface {v0, v8}, Lcom/google/android/apps/googlevoice/net/CheckinRpc;->setCheckinReason(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;)V

    .line 239
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->checkinToken:Ljava/lang/String;

    invoke-interface {v0, v8}, Lcom/google/android/apps/googlevoice/net/CheckinRpc;->setCheckinToken(Ljava/lang/String;)V

    .line 240
    iput-object v0, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;

    .line 241
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->handler:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$500(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;

    move-result-object v8

    const/16 v9, 0x408

    invoke-virtual {v8, v9, v6}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/google/android/apps/googlevoice/net/CheckinRpc;->submit(Landroid/os/Message;)V

    goto/16 :goto_23

    .line 245
    .end local v0           #checkinRpc:Lcom/google/android/apps/googlevoice/net/CheckinRpc;
    .end local v6           #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    :sswitch_190
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    .line 246
    .restart local v6       #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    iget-object v0, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;

    check-cast v0, Lcom/google/android/apps/googlevoice/net/CheckinRpc;

    .line 247
    .restart local v0       #checkinRpc:Lcom/google/android/apps/googlevoice/net/CheckinRpc;
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->rpc:Lcom/google/android/apps/googlevoice/net/ApiRpc;

    .line 248
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/CheckinRpc;->hasException()Z

    move-result v8

    if-eqz v8, :cond_1b2

    .line 249
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onFailure:Landroid/os/Message;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/CheckinRpc;->getException()Ljava/lang/Exception;

    move-result-object v9

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onFailure:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 254
    :goto_1ae
    const/4 v0, 0x0

    .line 255
    const/4 v6, 0x0

    .line 256
    goto/16 :goto_23

    .line 252
    :cond_1b2
    iget-object v8, v6, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onSuccess:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1ae

    .line 259
    .end local v0           #checkinRpc:Lcom/google/android/apps/googlevoice/net/CheckinRpc;
    .end local v6           #request:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    :sswitch_1b8
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    #setter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->devicePrimaryAccount:Ljava/lang/String;
    invoke-static {v9, v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$702(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    #setter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidPrimaryId:Ljava/lang/String;
    invoke-static {v9, v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$402(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    const/16 v8, 0x7d3

    invoke-virtual {p0, v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_23

    .line 265
    :sswitch_1d1
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    monitor-enter v9

    .line 266
    :try_start_1d4
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requests:Ljava/util/Queue;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$800(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1de
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    .line 267
    .local v4, r:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    iget-object v8, v4, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->onFailure:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1de

    .line 270
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #r:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    :catchall_1f0
    move-exception v8

    monitor-exit v9
    :try_end_1f2
    .catchall {:try_start_1d4 .. :try_end_1f2} :catchall_1f0

    throw v8

    .line 269
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1f3
    :try_start_1f3
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requests:Ljava/util/Queue;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$800(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    .line 270
    monitor-exit v9
    :try_end_1fd
    .catchall {:try_start_1f3 .. :try_end_1fd} :catchall_1f0

    goto/16 :goto_23

    .line 274
    .end local v1           #i$:Ljava/util/Iterator;
    :sswitch_1ff
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    monitor-enter v9

    .line 275
    :try_start_202
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requests:Ljava/util/Queue;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$800(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_20c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_227

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    .line 276
    .restart local v4       #r:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    iget-object v8, v4, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;->api:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    iget v8, v8, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->apiAction:I

    invoke-virtual {p0, v8, v4}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_20c

    .line 279
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #r:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
    :catchall_224
    move-exception v8

    monitor-exit v9
    :try_end_226
    .catchall {:try_start_202 .. :try_end_226} :catchall_224

    throw v8

    .line 278
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_227
    :try_start_227
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->this$0:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    #getter for: Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requests:Ljava/util/Queue;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->access$800(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    .line 279
    monitor-exit v9
    :try_end_231
    .catchall {:try_start_227 .. :try_end_231} :catchall_224

    goto/16 :goto_23

    .line 169
    nop

    :sswitch_data_234
    .sparse-switch
        0x3e9 -> :sswitch_24
        0x3ea -> :sswitch_69
        0x3f3 -> :sswitch_c0
        0x3f4 -> :sswitch_104
        0x407 -> :sswitch_148
        0x408 -> :sswitch_190
        0x7d1 -> :sswitch_1b8
        0x7d2 -> :sswitch_1d1
        0x7d3 -> :sswitch_1ff
    .end sparse-switch
.end method
