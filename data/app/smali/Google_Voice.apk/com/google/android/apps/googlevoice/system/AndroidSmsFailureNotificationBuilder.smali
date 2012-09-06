.class public Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;
.super Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;
.source "AndroidSmsFailureNotificationBuilder.java"


# instance fields
.field private final exceptionsBySmsPhoneCall:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final latestSms:Lcom/google/android/apps/googlevoice/core/PhoneCall;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;Ljava/util/Map;)V
    .registers 5
    .parameter "context"
    .parameter "voicePreferences"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/googlevoice/VoicePreferences;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, exceptionsBySmsPhoneCall:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/apps/googlevoice/core/PhoneCall;Ljava/lang/Exception;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->exceptionsBySmsPhoneCall:Ljava/util/Map;

    .line 44
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->getLatestSms()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->latestSms:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 45
    return-void
.end method

.method private createContentIntent()Landroid/app/PendingIntent;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 102
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->exceptionsBySmsPhoneCall:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    new-array v4, v5, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 104
    .local v1, failedSms:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->areCallsFromSameConversation([Lcom/google/android/apps/googlevoice/core/PhoneCall;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 107
    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, conversationId:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    const-class v4, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v2, notificationIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoiceUri;->createConversationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 116
    .end local v0           #conversationId:Ljava/lang/String;
    :goto_2b
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, v5, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3

    .line 113
    .end local v2           #notificationIntent:Landroid/content/Intent;
    :cond_39
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    const-class v4, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .restart local v2       #notificationIntent:Landroid/content/Intent;
    const-string v3, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    const-string v4, "inbox"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b
.end method

.method private getContentText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->exceptionsBySmsPhoneCall:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->latestSms:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 83
    .local v0, smsException:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->getNotificationContentTextForSmsException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getContentTitle()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 70
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->exceptionsBySmsPhoneCall:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v4, :cond_12

    .line 71
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->sms_failed_single_notification_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, contentTitle:Ljava/lang/String;
    :goto_11
    return-object v0

    .line 73
    .end local v0           #contentTitle:Ljava/lang/String;
    :cond_12
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->exceptionsBySmsPhoneCall:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    .line 74
    .local v1, numFailedSms:I
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->sms_failed_multiple_notification_title:I

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentTitle:Ljava/lang/String;
    goto :goto_11
.end method

.method private getLatestSms()Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 9

    .prologue
    .line 126
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->exceptionsBySmsPhoneCall:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 127
    .local v0, failedTextMessages:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/googlevoice/core/PhoneCall;>;"
    const/4 v2, 0x0

    .line 128
    .local v2, latestTextMessage:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 129
    .local v3, textMessage:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-nez v2, :cond_1b

    .line 130
    move-object v2, v3

    goto :goto_b

    .line 131
    :cond_1b
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_b

    .line 132
    move-object v2, v3

    goto :goto_b

    .line 135
    .end local v3           #textMessage:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_29
    return-object v2
.end method

.method private getNotificationContentTextForSmsException(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 6
    .parameter "exception"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, contentText:Ljava/lang/String;
    if-eqz p1, :cond_39

    instance-of v2, p1, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v2, :cond_39

    move-object v1, p1

    .line 145
    check-cast v1, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .line 146
    .local v1, voiceException:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->getNumber()I

    move-result v2

    sparse-switch v2, :sswitch_data_42

    .line 159
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->sms_failed_generic_notification_content:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .end local v1           #voiceException:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    :goto_1d
    return-object v0

    .line 148
    .restart local v1       #voiceException:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    :sswitch_1e
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->sms_failed_invalid_phone_number_notification_content:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    goto :goto_1d

    .line 152
    :sswitch_27
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->sms_failed_destination_disallowed_notification_content:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    goto :goto_1d

    .line 156
    :sswitch_30
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->sms_failed_no_credit_notification_content:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    goto :goto_1d

    .line 162
    .end local v1           #voiceException:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    :cond_39
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->sms_failed_resend_notification_content:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 146
    :sswitch_data_42
    .sparse-switch
        0x3 -> :sswitch_1e
        0x10 -> :sswitch_30
        0x11 -> :sswitch_27
    .end sparse-switch
.end method


# virtual methods
.method protected setEventInfo()V
    .registers 6

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, contentTitle:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->getContentText()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, contentText:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->createContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 61
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->notification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 62
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 63
    return-void
.end method

.method protected setNotificationStyle()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->setSoundVibrateAndFlash(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 91
    return-void
.end method

.method protected setTickerText()V
    .registers 7

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->sms_failed_notification_short_ticker:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->latestSms:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/VoiceUtil;->toStringNullEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 53
    return-void
.end method
