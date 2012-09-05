.class synthetic Lcom/google/android/apps/plus/hangout/HangoutTile$11;
.super Ljava/lang/Object;
.source "HangoutTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

.field static final synthetic $SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

.field static final synthetic $SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1084
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_11b

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->FATAL:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_118

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->INCONSISTENT_STATE:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_115

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->NETWORK:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_112

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_10f

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_10c

    .line 973
    :goto_4b
    invoke-static {}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->values()[Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    :try_start_54
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_109

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->START:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_106

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_103

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_100

    :goto_80
    :try_start_80
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_fe

    .line 227
    :goto_8b
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    :try_start_94
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_fc

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_fa

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->TIMEOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_f8

    :goto_b5
    :try_start_b5
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->MEDIA_START_TIMEOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_c0} :catch_f6

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->BLOCKED_BY_SOMEONE_IN_HANGOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cb} :catch_f4

    :goto_cb
    :try_start_cb
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->BLOCKING_SOMEONE_IN_HANGOUT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d6} :catch_f2

    :goto_d6
    :try_start_d6
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->MAX_USERS:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_e1} :catch_f0

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->SERVER:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ed} :catch_ee

    :goto_ed
    return-void

    :catch_ee
    move-exception v0

    goto :goto_ed

    :catch_f0
    move-exception v0

    goto :goto_e1

    :catch_f2
    move-exception v0

    goto :goto_d6

    :catch_f4
    move-exception v0

    goto :goto_cb

    :catch_f6
    move-exception v0

    goto :goto_c0

    :catch_f8
    move-exception v0

    goto :goto_b5

    :catch_fa
    move-exception v0

    goto :goto_aa

    :catch_fc
    move-exception v0

    goto :goto_9f

    .line 973
    :catch_fe
    move-exception v0

    goto :goto_8b

    :catch_100
    move-exception v0

    goto/16 :goto_80

    :catch_103
    move-exception v0

    goto/16 :goto_75

    :catch_106
    move-exception v0

    goto/16 :goto_6a

    :catch_109
    move-exception v0

    goto/16 :goto_5f

    .line 1084
    :catch_10c
    move-exception v0

    goto/16 :goto_4b

    :catch_10f
    move-exception v0

    goto/16 :goto_40

    :catch_112
    move-exception v0

    goto/16 :goto_35

    :catch_115
    move-exception v0

    goto/16 :goto_2a

    :catch_118
    move-exception v0

    goto/16 :goto_1f

    :catch_11b
    move-exception v0

    goto/16 :goto_14
.end method
