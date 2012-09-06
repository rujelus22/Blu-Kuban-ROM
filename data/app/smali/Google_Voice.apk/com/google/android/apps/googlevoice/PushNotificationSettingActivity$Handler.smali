.class Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;
.super Landroid/os/Handler;
.source "PushNotificationSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;-><init>(Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const-wide/32 v3, 0x3dcc500

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->access$200(Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;)Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->access$100(Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getInboxNotificationTimestamp()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->scheduleInboxNotificationRegistrationAlarm(JJ)V

    .line 99
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->setResult(I)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->finish()V

    .line 101
    return-void
.end method
