.class synthetic Lcom/android/phone/InVTCallScreen$61;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Call$State:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

.field static final synthetic $SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

.field static final synthetic $SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 7697
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    :try_start_9
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_1ab

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1a8

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1a5

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1a2

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_19f

    .line 6926
    :goto_40
    invoke-static {}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->values()[Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    :try_start_49
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_19c

    :goto_54
    :try_start_54
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_199

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_196

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_193

    :goto_75
    :try_start_75
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_190

    :goto_80
    :try_start_80
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_18d

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_18a

    .line 6276
    :goto_96
    invoke-static {}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->values()[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    :try_start_9f
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_187

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_184

    :goto_b5
    :try_start_b5
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_c0} :catch_181

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cb} :catch_17e

    :goto_cb
    :try_start_cb
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d6} :catch_17b

    :goto_d6
    :try_start_d6
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_e1} :catch_178

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ec} :catch_175

    :goto_ec
    :try_start_ec
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f8} :catch_173

    .line 4907
    :goto_f8
    invoke-static {}, Lcom/android/internal/telephony/Connection$PostDialState;->values()[Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    :try_start_101
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10c} :catch_171

    :goto_10c
    :try_start_10c
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_117
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_117} :catch_16f

    :goto_117
    :try_start_117
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_122} :catch_16d

    :goto_122
    :try_start_122
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_12d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12d} :catch_16b

    :goto_12d
    :try_start_12d
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12d .. :try_end_138} :catch_169

    .line 3781
    :goto_138
    invoke-static {}, Lcom/android/internal/telephony/Phone$SuppService;->values()[Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    :try_start_141
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_141 .. :try_end_14c} :catch_167

    :goto_14c
    :try_start_14c
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_157
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14c .. :try_end_157} :catch_165

    :goto_157
    :try_start_157
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_162
    .catch Ljava/lang/NoSuchFieldError; {:try_start_157 .. :try_end_162} :catch_163

    :goto_162
    return-void

    :catch_163
    move-exception v0

    goto :goto_162

    :catch_165
    move-exception v0

    goto :goto_157

    :catch_167
    move-exception v0

    goto :goto_14c

    .line 4907
    :catch_169
    move-exception v0

    goto :goto_138

    :catch_16b
    move-exception v0

    goto :goto_12d

    :catch_16d
    move-exception v0

    goto :goto_122

    :catch_16f
    move-exception v0

    goto :goto_117

    :catch_171
    move-exception v0

    goto :goto_10c

    .line 6276
    :catch_173
    move-exception v0

    goto :goto_f8

    :catch_175
    move-exception v0

    goto/16 :goto_ec

    :catch_178
    move-exception v0

    goto/16 :goto_e1

    :catch_17b
    move-exception v0

    goto/16 :goto_d6

    :catch_17e
    move-exception v0

    goto/16 :goto_cb

    :catch_181
    move-exception v0

    goto/16 :goto_c0

    :catch_184
    move-exception v0

    goto/16 :goto_b5

    :catch_187
    move-exception v0

    goto/16 :goto_aa

    .line 6926
    :catch_18a
    move-exception v0

    goto/16 :goto_96

    :catch_18d
    move-exception v0

    goto/16 :goto_8b

    :catch_190
    move-exception v0

    goto/16 :goto_80

    :catch_193
    move-exception v0

    goto/16 :goto_75

    :catch_196
    move-exception v0

    goto/16 :goto_6a

    :catch_199
    move-exception v0

    goto/16 :goto_5f

    :catch_19c
    move-exception v0

    goto/16 :goto_54

    .line 7697
    :catch_19f
    move-exception v0

    goto/16 :goto_40

    :catch_1a2
    move-exception v0

    goto/16 :goto_35

    :catch_1a5
    move-exception v0

    goto/16 :goto_2a

    :catch_1a8
    move-exception v0

    goto/16 :goto_1f

    :catch_1ab
    move-exception v0

    goto/16 :goto_14
.end method
