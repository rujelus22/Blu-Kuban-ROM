.class public Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;
.super Ljava/lang/Object;
.source "AndroidCallSetupEventLogger.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/CallSetupEventLogger;


# instance fields
.field private accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

.field private callSetupProtocol:I

.field private callStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

.field private shadowNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->callSetupProtocol:I

    return-void
.end method

.method private logEventDependingOnCallSetupProtocol(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V
    .registers 7
    .parameter "noCalltypeEvent"
    .parameter "accessNumEvent"
    .parameter "shadowNumEvent"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, action:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    const/4 v1, 0x0

    .line 171
    .local v1, stopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;
    iget v2, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->callSetupProtocol:I

    packed-switch v2, :pswitch_data_2e

    .line 185
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_10

    .line 186
    const-string v2, "Unknown callSetupProtocol. Logging will not occur."

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 189
    :cond_10
    :goto_10
    if-eqz v0, :cond_17

    .line 190
    if-eqz v1, :cond_24

    .line 191
    invoke-virtual {v1, v0}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->logLatency(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 198
    :cond_17
    :goto_17
    return-void

    .line 173
    :pswitch_18
    move-object v0, p1

    .line 174
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->callStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    .line 175
    goto :goto_10

    .line 177
    :pswitch_1c
    move-object v0, p2

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    .line 179
    goto :goto_10

    .line 181
    :pswitch_20
    move-object v0, p3

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->shadowNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    .line 183
    goto :goto_10

    .line 193
    :cond_24
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_17

    .line 194
    const-string v2, "The call setup stopwatch has not been created. Logging skipped."

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_17

    .line 171
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public onAccessNumberAuthenticationError()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    if-eqz v0, :cond_c

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_AUTHENTICATION_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->logLatency(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 134
    :cond_b
    :goto_b
    return-void

    .line 130
    :cond_c
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_b

    .line 131
    const-string v0, "The accessNumberStopwatch has not been created. Logging skipped"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onAccessNumberLookupFailed()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->logLatency(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 122
    :cond_b
    :goto_b
    return-void

    .line 118
    :cond_c
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_b

    .line 119
    const-string v0, "The Access Number stopwatch has not been created. Logging skipped"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onAccessNumberLookupSkipped()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->callStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    if-eqz v0, :cond_c

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->callStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_SKIPPED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->logLatency(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 97
    :cond_b
    :goto_b
    return-void

    .line 93
    :cond_c
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_b

    .line 94
    const-string v0, "The callStopwatch has not been created. Logging skipped"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onAccessNumberLookupStarted(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/net/EventLogger;)V
    .registers 5
    .parameter "clockUtils"
    .parameter "eventLogger"

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-direct {v0, p2, p1, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;-><init>(Lcom/google/android/apps/googlevoice/net/EventLogger;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    .line 85
    return-void
.end method

.method public onAccessNumberLookupSucceeded()V
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->callSetupProtocol:I

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    if-eqz v0, :cond_f

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->logLatency(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 110
    :cond_e
    :goto_e
    return-void

    .line 106
    :cond_f
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_e

    .line 107
    const-string v0, "The Access Number stopwatch has not been created. Logging skipped"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onCallAbandoned()V
    .registers 4

    .prologue
    .line 138
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITHOUT_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITH_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITH_SHADOW_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->logEventDependingOnCallSetupProtocol(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 142
    return-void
.end method

.method public onCallCompleted()V
    .registers 4

    .prologue
    .line 146
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITHOUT_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITH_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITH_SHADOW_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->logEventDependingOnCallSetupProtocol(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 150
    return-void
.end method

.method public onCallSetupStarted(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/net/EventLogger;)V
    .registers 5
    .parameter "clockUtils"
    .parameter "eventLogger"

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_SETUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-direct {v0, p2, p1, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;-><init>(Lcom/google/android/apps/googlevoice/net/EventLogger;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->callStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    .line 34
    return-void
.end method

.method public onExceptionOnDoneGetAccessNumber()V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    if-eqz v0, :cond_c

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->accessNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXCEPTION_ON_DONE_GET_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->logLatency(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 162
    :cond_b
    :goto_b
    return-void

    .line 158
    :cond_c
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_b

    .line 159
    const-string v0, "The accessNumberStopwatch has not been created. Logging skipped"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onShadowNumberFound()V
    .registers 3

    .prologue
    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->callSetupProtocol:I

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->shadowNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    if-eqz v0, :cond_f

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->shadowNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->logLatency(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 65
    :cond_e
    :goto_e
    return-void

    .line 61
    :cond_f
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_e

    .line 62
    const-string v0, "The shadow number stopwatch has not been created. Logging skipped"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onShadowNumberLookupSkipped()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->callStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    if-eqz v0, :cond_c

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->callStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_LOOKUP_SKIPPED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->logLatency(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 53
    :cond_b
    :goto_b
    return-void

    .line 49
    :cond_c
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_b

    .line 50
    const-string v0, "The callStopwatch has not been created. Logging skipped"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onShadowNumberLookupStarted(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/net/EventLogger;)V
    .registers 5
    .parameter "clockUtils"
    .parameter "eventLogger"

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_LOOKUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-direct {v0, p2, p1, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;-><init>(Lcom/google/android/apps/googlevoice/net/EventLogger;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->shadowNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    .line 42
    return-void
.end method

.method public onShadowNumberNotFound()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->shadowNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    if-eqz v0, :cond_c

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;->shadowNumberStopwatch:Lcom/google/android/apps/googlevoice/MasfLogStopwatch;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_NOT_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->logLatency(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 77
    :cond_b
    :goto_b
    return-void

    .line 73
    :cond_c
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_b

    .line 74
    const-string v0, "The shadow number stopwatch has not been created. Logging skipped"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_b
.end method
