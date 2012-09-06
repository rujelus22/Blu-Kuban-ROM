.class Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;
.super Landroid/os/Handler;
.source "PushNotificationRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;-><init>(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "message"

    .prologue
    .line 165
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$100(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 166
    .local v1, now:J
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$100(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v3

    .line 167
    .local v3, serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_18c

    .line 264
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 266
    :goto_20
    return-void

    .line 169
    :sswitch_21
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_2a

    .line 170
    const-string v6, "PushNotificationRegistrationService.Handler.handleMessage(): successfully registered for inbox notifications"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 173
    :cond_2a
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$200(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v6

    const-string v7, "PNRS: registration successful."

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 174
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->lastRegistrationTimestamp:Ljava/lang/Long;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$300(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/32 v8, 0x14997000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_54

    .line 177
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_51

    .line 178
    const-string v6, "PushNotificationRegistrationService.Handler.handleMessage():  ... after timeout, requesting update"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 181
    :cond_51
    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestBackgroundUpdate()V

    .line 183
    :cond_54
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$400(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getInboxNotificationTimestamp()J

    move-result-wide v6

    const-wide/32 v8, 0x3dcc500

    add-long/2addr v6, v8

    const-wide/32 v8, 0x3dcc500

    invoke-interface {v3, v6, v7, v8, v9}, Lcom/google/android/apps/googlevoice/ServiceManager;->scheduleInboxNotificationRegistrationAlarm(JJ)V

    .line 186
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$200(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PNRS: Next registration request at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$400(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getInboxNotificationTimestamp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/32 v8, 0x3dcc500

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 189
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #calls: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->done()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$500(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)V

    goto :goto_20

    .line 193
    :sswitch_9b
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_a4

    .line 194
    const-string v6, "PushNotificationRegistrationService.Handler.handleMessage(): failed to register for inbox notifications"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 197
    :cond_a4
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$200(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v6

    const-string v7, "PNRS: registration failed."

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 198
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_df

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v6, :cond_df

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v6

    sget-object v7, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v6, v7, :cond_df

    .line 208
    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/ServiceManager;->cancelInboxNotificationRegistrationAlarm()V

    .line 209
    const/16 v6, 0x3eb

    invoke-virtual {p0, v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, invalidated:Landroid/os/Message;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$100(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v0, v0, v7}, Lcom/google/android/apps/googlevoice/DependencyResolver;->invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V

    .line 233
    .end local v0           #invalidated:Landroid/os/Message;
    :cond_d8
    :goto_d8
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #calls: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->done()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$500(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)V

    goto/16 :goto_20

    .line 214
    :cond_df
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$400(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getInboxNotificationTimestamp()J

    move-result-wide v4

    .line 215
    .local v4, then:J
    sub-long v6, v1, v4

    const-wide/32 v8, 0x14997000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_fb

    .line 218
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->notifier:Lcom/google/android/apps/googlevoice/Notifier;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$600(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/Notifier;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/Notifier;->notifyInboxNotificationRegistrationExpired()V

    .line 221
    :cond_fb
    const-wide/32 v6, 0x36ee80

    add-long/2addr v6, v1

    const-wide/32 v8, 0x36ee80

    invoke-interface {v3, v6, v7, v8, v9}, Lcom/google/android/apps/googlevoice/ServiceManager;->scheduleInboxNotificationRegistrationAlarm(JJ)V

    .line 224
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$200(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PNRS: Next registration request at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/32 v8, 0x36ee80

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 228
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$700(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/ConnectionInformation;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/ConnectionInformation;->hasNetworkConnection()Z

    move-result v6

    if-nez v6, :cond_d8

    .line 229
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    const/4 v7, 0x1

    #calls: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->setConnectivityReceiverEnabled(Z)V
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$800(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;Z)V

    goto :goto_d8

    .line 237
    .end local v4           #then:J
    :sswitch_13b
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_144

    .line 238
    const-string v6, "- auth token invalidated"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 240
    :cond_144
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$200(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v6

    const-string v7, "PNRS: auth token invalidated."

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 242
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #calls: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->done()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$500(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)V

    goto/16 :goto_20

    .line 246
    :sswitch_156
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_15f

    .line 247
    const-string v6, "- have credentials, attempting registration"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 249
    :cond_15f
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$200(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v6

    const-string v7, "PNRS: credentials OK."

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 251
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #calls: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->attemptRegistration()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$900(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)V

    goto/16 :goto_20

    .line 255
    :sswitch_171
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_17a

    .line 256
    const-string v6, "- failed to get credentials, stopping"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 258
    :cond_17a
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$200(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v6

    const-string v7, "PNRS: credentials failed."

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 260
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    #calls: Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->done()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->access$500(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)V

    goto/16 :goto_20

    .line 167
    :sswitch_data_18c
    .sparse-switch
        0x3e9 -> :sswitch_21
        0x3ea -> :sswitch_9b
        0x3eb -> :sswitch_13b
        0x3f3 -> :sswitch_156
        0x3f4 -> :sswitch_171
    .end sparse-switch
.end method
