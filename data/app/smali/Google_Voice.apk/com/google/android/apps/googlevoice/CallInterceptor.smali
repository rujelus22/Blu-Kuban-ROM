.class public Lcom/google/android/apps/googlevoice/CallInterceptor;
.super Landroid/content/BroadcastReceiver;
.source "CallInterceptor.java"


# instance fields
.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isModifiedNumberForOldBackend(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "phoneNumber"
    .parameter "accessNumber"

    .prologue
    .line 112
    if-eqz p2, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private shouldReroute(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 15
    .parameter "context"
    .parameter "mode"
    .parameter "phoneNumber"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_14

    .line 118
    :cond_a
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_13

    .line 119
    const-string v7, "No phone number to reroute. Let it go."

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 202
    :cond_13
    :goto_13
    return v6

    .line 124
    :cond_14
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getDoNotCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, doNotCallNumber:Ljava/lang/String;
    sget-boolean v8, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v8, :cond_44

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Comparing phoneNumber ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") and doNotCallNumber ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 129
    :cond_44
    if-eqz v1, :cond_5b

    invoke-static {v1, p3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 130
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_55

    .line 131
    const-string v7, "Got the call to a do-not-call number. Let it go, and clear up the do-not call number so we don\'t keep it around."

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 134
    :cond_55
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clearDoNotCallNumber()V

    goto :goto_13

    .line 140
    :cond_5b
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccessNumber()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, accessNumber:Ljava/lang/String;
    sget-boolean v8, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v8, :cond_8b

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Comparing phoneNumber ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") and AccessNumber ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 145
    :cond_8b
    invoke-static {v0, p3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 146
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_9a

    .line 147
    const-string v7, "Got the call to backend. Let it go."

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 149
    :cond_9a
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clearAccessNumber()V

    goto/16 :goto_13

    .line 152
    :cond_a1
    const-string v8, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fc

    .line 153
    const-string v8, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, gatewayNumber:Ljava/lang/String;
    sget-boolean v8, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v8, :cond_e6

    .line 156
    const-string v8, "Have an extra with a gateway number!"

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Comparing gateway number ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") and AccessNumber ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 160
    :cond_e6
    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fc

    .line 161
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_f5

    .line 162
    const-string v7, "Got the call to backend in the \'gateway number\' extra. Let it go."

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 164
    :cond_f5
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clearAccessNumber()V

    goto/16 :goto_13

    .line 169
    .end local v2           #gatewayNumber:Ljava/lang/String;
    :cond_fc
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, subscriberNumber:Ljava/lang/String;
    if-eqz v5, :cond_115

    invoke-static {p3, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_115

    .line 172
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_13

    .line 173
    const-string v7, "Got a call to the user\'s own Google Voice number. Let it go."

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 178
    :cond_115
    invoke-direct {p0, p3, v0}, Lcom/google/android/apps/googlevoice/CallInterceptor;->isModifiedNumberForOldBackend(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_126

    .line 179
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_13

    .line 180
    const-string v7, "Got the call to old backend. Let it go."

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 188
    :cond_126
    sget-object v8, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ALL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-eq p2, v8, :cond_132

    sget-object v8, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-eq p2, v8, :cond_132

    sget-object v8, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK_INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-ne p2, v8, :cond_188

    :cond_132
    move v4, v7

    .line 190
    .local v4, shouldReroute:Z
    :goto_133
    sget-object v8, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-eq p2, v8, :cond_13b

    sget-object v8, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK_INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-ne p2, v8, :cond_163

    .line 191
    :cond_13b
    invoke-static {p3}, Lcom/google/android/apps/googlevoice/PhoneUtils;->isInternational(Ljava/lang/String;)Z

    move-result v4

    .line 192
    sget-boolean v8, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v8, :cond_163

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " global?: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 197
    :cond_163
    invoke-static {p1, p3}, Lcom/google/android/apps/googlevoice/PhoneUtils;->isRoutable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 199
    .local v3, rewrite:Z
    sget-boolean v8, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v8, :cond_181

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Should rewrite?: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 202
    :cond_181
    if-eqz v4, :cond_18a

    if-eqz v3, :cond_18a

    :goto_185
    move v6, v7

    goto/16 :goto_13

    .end local v3           #rewrite:Z
    .end local v4           #shouldReroute:Z
    :cond_188
    move v4, v6

    .line 188
    goto :goto_133

    .restart local v3       #rewrite:Z
    .restart local v4       #shouldReroute:Z
    :cond_18a
    move v7, v6

    .line 202
    goto :goto_185
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 42
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_13

    .line 43
    const-string v4, "CallInterceptor.onReceive() intercepted intent: \'%s\'"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 45
    :cond_13
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 46
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v2

    .line 47
    .local v2, mode:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v4

    sget-object v5, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-eq v4, v5, :cond_33

    if-eqz v2, :cond_33

    sget-object v4, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-ne v2, v4, :cond_42

    .line 51
    :cond_33
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_3c

    .line 52
    const-string v4, "Disable call interceptor because app setup is not finished, or mode doesn\'t need intercept."

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 58
    :cond_3c
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->disableCallInterceptor()V

    .line 106
    :cond_41
    :goto_41
    return-void

    .line 63
    :cond_42
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallInterceptor;->getResultData()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, originalNumber:Ljava/lang/String;
    if-nez v3, :cond_4e

    .line 67
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    :cond_4e
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_7b

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Original number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 72
    const-string v4, "Rerouting mode: \'%s\'"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getModeString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 75
    :cond_7b
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/google/android/apps/googlevoice/CallInterceptor;->shouldReroute(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 76
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/CallInterceptor;->setResultData(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallInterceptor;->abortBroadcast()V

    .line 84
    invoke-static {}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->setIsMakingCall()Z

    move-result v4

    if-nez v4, :cond_98

    .line 85
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_41

    .line 86
    const-string v4, "Drop the call intent because we are still routing previous call."

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_41

    .line 91
    :cond_98
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_a1

    .line 92
    const-string v4, "Starting connecting activity"

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 94
    :cond_a1
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v1, callConnectingActivityIntent:Landroid/content/Intent;
    const-string v4, "com.google.android.apps.googlevoice.CallLogService.NUMBER_TO_CALL"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    .end local v1           #callConnectingActivityIntent:Landroid/content/Intent;
    :cond_b5
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/CallInterceptor;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccessNumber()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, accessNumber:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ALL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-eq v2, v4, :cond_c3

    sget-object v4, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-ne v2, v4, :cond_41

    :cond_c3
    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/googlevoice/CallInterceptor;->isModifiedNumberForOldBackend(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/CallInterceptor;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_41
.end method
