.class synthetic Lcom/google/android/voicesearch/speechservice/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

.field static final synthetic $SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 572
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->values()[Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I

    :try_start_9
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->HOME:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_133

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->WORK:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_130

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_12d

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->HOME_FAX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_12a

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->WORK_FAX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_127

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->OTHER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_124

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->PAGER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_121

    .line 305
    :goto_56
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->values()[Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    :try_start_5f
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_11e

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL_NUMBER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_11b

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL_BUSINESS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_118

    :goto_80
    :try_start_80
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DISPLAY_CONTACT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_115

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->MAP_OF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_113

    :goto_96
    :try_start_96
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DIRECTIONS_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a1} :catch_111

    :goto_a1
    :try_start_a1
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->NAVIGATE_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ac} :catch_10f

    :goto_ac
    :try_start_ac
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->WEB_SEARCH:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_b8} :catch_10d

    :goto_b8
    :try_start_b8
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->GO_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c4} :catch_10b

    :goto_c4
    :try_start_c4
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->LISTEN_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_109

    :goto_d0
    :try_start_d0
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_dc} :catch_107

    :goto_dc
    :try_start_dc
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_e8} :catch_105

    :goto_e8
    :try_start_e8
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->NOTE_TO_SELF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f4} :catch_103

    :goto_f4
    :try_start_f4
    sget-object v0, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SET_ALARM:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f4 .. :try_end_100} :catch_101

    :goto_100
    return-void

    :catch_101
    move-exception v0

    goto :goto_100

    :catch_103
    move-exception v0

    goto :goto_f4

    :catch_105
    move-exception v0

    goto :goto_e8

    :catch_107
    move-exception v0

    goto :goto_dc

    :catch_109
    move-exception v0

    goto :goto_d0

    :catch_10b
    move-exception v0

    goto :goto_c4

    :catch_10d
    move-exception v0

    goto :goto_b8

    :catch_10f
    move-exception v0

    goto :goto_ac

    :catch_111
    move-exception v0

    goto :goto_a1

    :catch_113
    move-exception v0

    goto :goto_96

    :catch_115
    move-exception v0

    goto/16 :goto_8b

    :catch_118
    move-exception v0

    goto/16 :goto_80

    :catch_11b
    move-exception v0

    goto/16 :goto_75

    :catch_11e
    move-exception v0

    goto/16 :goto_6a

    .line 572
    :catch_121
    move-exception v0

    goto/16 :goto_56

    :catch_124
    move-exception v0

    goto/16 :goto_4b

    :catch_127
    move-exception v0

    goto/16 :goto_40

    :catch_12a
    move-exception v0

    goto/16 :goto_35

    :catch_12d
    move-exception v0

    goto/16 :goto_2a

    :catch_130
    move-exception v0

    goto/16 :goto_1f

    :catch_133
    move-exception v0

    goto/16 :goto_14
.end method
