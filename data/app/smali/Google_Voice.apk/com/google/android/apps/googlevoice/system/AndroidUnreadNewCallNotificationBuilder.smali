.class public Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;
.super Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;
.source "AndroidUnreadNewCallNotificationBuilder.java"


# instance fields
.field private final newCallMessage:Ljava/lang/String;

.field private final unreadCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;ILjava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "voicePreferences"
    .parameter "unreadCount"
    .parameter "newCallMessage"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 29
    iput p3, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->unreadCount:I

    .line 30
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->newCallMessage:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private createContentIntent()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->context:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, notificationIntent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    const-string v2, "inbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected setEventInfo()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 40
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/apps/googlevoice/R$plurals;->unread_notification_info_multiple_items_title:I

    iget v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->unreadCount:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->unreadCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, contentTitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/apps/googlevoice/R$plurals;->unread_notification_new_call:I

    iget v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->unreadCount:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->unreadCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, contentText:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->createContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 47
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->notification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 48
    return-void
.end method

.method protected setNotificationStyle()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->setSoundAndVibrate(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->setFlashLights(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 72
    return-void
.end method

.method protected setTickerText()V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNewCallNotificationBuilder;->newCallMessage:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 36
    return-void
.end method
