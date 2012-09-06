.class synthetic Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;
.super Ljava/lang/Object;
.source "HangoutTabletTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

.field static final synthetic $SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

.field static final synthetic $SwitchMap$com$google$android$apps$plus$hangout$HangoutTabletTile$StageViewMode:[I

.field static final synthetic $SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1643
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15d

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->FATAL:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_15a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->INCONSISTENT_STATE:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_157

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->NETWORK:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_154

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_151

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_14e

    .line 1505
    :goto_4b
    invoke-static {}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->values()[Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTabletTile$StageViewMode:[I

    :try_start_54
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTabletTile$StageViewMode:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_LOCAL_ONLY:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_14b

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTabletTile$StageViewMode:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_LOCAL_AND_REMOTE:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_148

    .line 1440
    :goto_6a
    invoke-static {}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->values()[Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    :try_start_73
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_145

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->START:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_142

    :goto_89
    :try_start_89
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_13f

    :goto_94
    :try_start_94
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_13c

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_139

    .line 209
    :goto_aa
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    :try_start_b3
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_be} :catch_137

    :goto_be
    :try_start_be
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c9} :catch_135

    :goto_c9
    :try_start_c9
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->TIMEOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d4} :catch_133

    :goto_d4
    :try_start_d4
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->MEDIA_START_TIMEOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_df} :catch_131

    :goto_df
    :try_start_df
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->BLOCKED_BY_SOMEONE_IN_HANGOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_ea} :catch_12f

    :goto_ea
    :try_start_ea
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->BLOCKING_SOMEONE_IN_HANGOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_f5} :catch_12d

    :goto_f5
    :try_start_f5
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->MAX_USERS:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_100} :catch_12b

    :goto_100
    :try_start_100
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->SERVER:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_10c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_10c} :catch_129

    :goto_10c
    :try_start_10c
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->GREEN_ROOM_INFO:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_118} :catch_127

    :goto_118
    :try_start_118
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->HANGOUT_OVER:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_124} :catch_125

    :goto_124
    return-void

    :catch_125
    move-exception v0

    goto :goto_124

    :catch_127
    move-exception v0

    goto :goto_118

    :catch_129
    move-exception v0

    goto :goto_10c

    :catch_12b
    move-exception v0

    goto :goto_100

    :catch_12d
    move-exception v0

    goto :goto_f5

    :catch_12f
    move-exception v0

    goto :goto_ea

    :catch_131
    move-exception v0

    goto :goto_df

    :catch_133
    move-exception v0

    goto :goto_d4

    :catch_135
    move-exception v0

    goto :goto_c9

    :catch_137
    move-exception v0

    goto :goto_be

    .line 1440
    :catch_139
    move-exception v0

    goto/16 :goto_aa

    :catch_13c
    move-exception v0

    goto/16 :goto_9f

    :catch_13f
    move-exception v0

    goto/16 :goto_94

    :catch_142
    move-exception v0

    goto/16 :goto_89

    :catch_145
    move-exception v0

    goto/16 :goto_7e

    .line 1505
    :catch_148
    move-exception v0

    goto/16 :goto_6a

    :catch_14b
    move-exception v0

    goto/16 :goto_5f

    .line 1643
    :catch_14e
    move-exception v0

    goto/16 :goto_4b

    :catch_151
    move-exception v0

    goto/16 :goto_40

    :catch_154
    move-exception v0

    goto/16 :goto_35

    :catch_157
    move-exception v0

    goto/16 :goto_2a

    :catch_15a
    move-exception v0

    goto/16 :goto_1f

    :catch_15d
    move-exception v0

    goto/16 :goto_14
.end method
