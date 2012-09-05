.class public Lcom/vlingo/client/samsung/DrivingModeUtil;
.super Ljava/lang/Object;
.source "DrivingModeUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableDrivingMode(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->disableDrivingModeSetting(Landroid/content/ContentResolver;)V

    .line 79
    invoke-static {p0}, Lcom/vlingo/client/widget/WidgetManager;->updateInCarWidget(Landroid/content/Context;)V

    .line 80
    const v0, 0x7f09006f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vlingo/client/samsung/DrivingModeUtil;->doToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public static disableDrivingMode(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 8
    .parameter "delegate"

    .prologue
    .line 94
    invoke-interface {p0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/vlingo/client/samsung/DrivingModeUtil;->disableDrivingModeSetting(Landroid/content/ContentResolver;)V

    .line 95
    sget-object v5, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_OFF:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {p0, v5}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 96
    invoke-interface {p0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/vlingo/client/widget/WidgetManager;->updateInCarWidget(Landroid/content/Context;)V

    .line 97
    invoke-interface {p0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f09006f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, origin_str:Ljava/lang/String;
    const-string v4, ""

    .line 100
    .local v4, toast_str:Ljava/lang/String;
    const/4 v3, 0x0

    .line 101
    .local v3, point_found:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5c

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_42

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_42

    if-eqz v3, :cond_5a

    .line 104
    :cond_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 106
    :cond_5a
    const/4 v3, 0x1

    goto :goto_57

    .line 109
    :cond_5c
    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/vlingo/client/samsung/DrivingModeUtil;->doToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public static disableDrivingMode(Lcom/vlingo/client/vvs/VVSDispatcher;)V
    .registers 8
    .parameter "dispatcher"

    .prologue
    const v6, 0x7f09006f

    .line 125
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/vlingo/client/samsung/DrivingModeUtil;->disableDrivingModeSetting(Landroid/content/ContentResolver;)V

    .line 126
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/vlingo/client/widget/WidgetManager;->updateInCarWidget(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, origin_str:Ljava/lang/String;
    const-string v4, ""

    .line 132
    .local v4, toast_str:Ljava/lang/String;
    const/4 v3, 0x0

    .line 133
    .local v3, point_found:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5a

    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_40

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_40

    if-eqz v3, :cond_58

    .line 136
    :cond_40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 138
    :cond_58
    const/4 v3, 0x1

    goto :goto_55

    .line 141
    :cond_5a
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/vlingo/client/samsung/DrivingModeUtil;->doToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 144
    return-void
.end method

.method private static disableDrivingModeSetting(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "contentResolver"

    .prologue
    .line 36
    const-string v0, "driving_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    return-void
.end method

.method private static doToast(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 157
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    return-void
.end method

.method public static enableDrivingMode(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->enableDrivingModeSetting(Landroid/content/ContentResolver;)V

    .line 72
    invoke-static {p0}, Lcom/vlingo/client/widget/WidgetManager;->updateInCarWidget(Landroid/content/Context;)V

    .line 73
    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vlingo/client/samsung/DrivingModeUtil;->doToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public static enableDrivingMode(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 4
    .parameter "delegate"

    .prologue
    .line 85
    invoke-interface {p0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/samsung/DrivingModeUtil;->enableDrivingModeSetting(Landroid/content/ContentResolver;)V

    .line 86
    sget-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_ON:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {p0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 87
    invoke-interface {p0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/widget/WidgetManager;->updateInCarWidget(Landroid/content/Context;)V

    .line 88
    invoke-interface {p0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f090082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/samsung/DrivingModeUtil;->doToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public static enableDrivingMode(Lcom/vlingo/client/vvs/VVSDispatcher;)V
    .registers 5
    .parameter "dispatcher"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/samsung/DrivingModeUtil;->enableDrivingModeSetting(Landroid/content/ContentResolver;)V

    .line 115
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090070

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/vlingo/client/widget/WidgetManager;->updateInCarWidget(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090082

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vlingo/client/samsung/DrivingModeUtil;->doToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 121
    return-void
.end method

.method private static enableDrivingModeSetting(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "contentResolver"

    .prologue
    .line 41
    const-string v0, "driving_mode_on"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    return-void
.end method

.method public static isDrivingModeEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method public static isDrivingModeMessageNotificaitonEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_message_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method public static toggleDrivingMode(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 55
    invoke-static {p0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->disableDrivingMode(Landroid/content/Context;)V

    .line 59
    :goto_9
    return-void

    .line 57
    :cond_a
    invoke-static {p0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->enableDrivingMode(Landroid/content/Context;)V

    goto :goto_9
.end method

.method public static toggleDrivingMode(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 46
    invoke-interface {p0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    invoke-static {p0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->disableDrivingMode(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 51
    :goto_d
    return-void

    .line 49
    :cond_e
    invoke-static {p0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->enableDrivingMode(Lcom/vlingo/client/car/CarActivityDelegate;)V

    goto :goto_d
.end method

.method public static toggleDrivingMode(Lcom/vlingo/client/vvs/VVSDispatcher;)V
    .registers 2
    .parameter "dispatcher"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 63
    invoke-static {p0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->disableDrivingMode(Lcom/vlingo/client/vvs/VVSDispatcher;)V

    .line 67
    :goto_d
    return-void

    .line 65
    :cond_e
    invoke-static {p0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->enableDrivingMode(Lcom/vlingo/client/vvs/VVSDispatcher;)V

    goto :goto_d
.end method
