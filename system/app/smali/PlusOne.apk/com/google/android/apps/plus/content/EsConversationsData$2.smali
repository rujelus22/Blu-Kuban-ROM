.class synthetic Lcom/google/android/apps/plus/content/EsConversationsData$2;
.super Ljava/lang/Object;
.source "EsConversationsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsConversationsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$wireless$realtimechat$proto$Client$ChatMessage$ReceiverState:[I

.field static final synthetic $SwitchMap$com$google$wireless$realtimechat$proto$Client$MembershipChange$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$realtimechat$proto$Client$Receipt$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$realtimechat$proto$Data$Participant$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 4879
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->values()[Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$ChatMessage$ReceiverState:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$ChatMessage$ReceiverState:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->NO_RECEIPT:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_149

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$ChatMessage$ReceiverState:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_146

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$ChatMessage$ReceiverState:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->READ:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_143

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$ChatMessage$ReceiverState:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_140

    .line 4840
    :goto_35
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->values()[Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$Participant$Type:[I

    :try_start_3e
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$Participant$Type:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_13d

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$Participant$Type:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->SMS:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_13a

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$Participant$Type:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ANDROID:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_137

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$Participant$Type:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->IPHONE:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_134

    .line 1887
    :goto_6a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->values()[Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$MembershipChange$Type:[I

    :try_start_73
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$MembershipChange$Type:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->JOIN:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_131

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$MembershipChange$Type:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->LEAVE:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_12e

    .line 1545
    :goto_89
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->values()[Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$Receipt$Type:[I

    :try_start_92
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$Receipt$Type:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->ACKNOWLEDGED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9d} :catch_12b

    :goto_9d
    :try_start_9d
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$Receipt$Type:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a8} :catch_128

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$Receipt$Type:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->READ:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b3} :catch_126

    .line 620
    :goto_b3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->values()[Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    :try_start_bc
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_CANNOT_CONTACT:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c7} :catch_124

    :goto_c7
    :try_start_c7
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->CONVERSATION_TOO_LARGE:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d2} :catch_122

    :goto_d2
    :try_start_d2
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_CONTACT:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_dd} :catch_120

    :goto_dd
    :try_start_dd
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_APP_BLOCKED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e8} :catch_11e

    :goto_e8
    :try_start_e8
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_EMAIL:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f3} :catch_11c

    :goto_f3
    :try_start_f3
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_PHONE:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_fe} :catch_11a

    :goto_fe
    :try_start_fe
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_COUNTRY_UNSUPPORTED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_109
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_109} :catch_118

    :goto_109
    :try_start_109
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_EXCEED_SMS_INVITES:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_109 .. :try_end_115} :catch_116

    :goto_115
    return-void

    :catch_116
    move-exception v0

    goto :goto_115

    :catch_118
    move-exception v0

    goto :goto_109

    :catch_11a
    move-exception v0

    goto :goto_fe

    :catch_11c
    move-exception v0

    goto :goto_f3

    :catch_11e
    move-exception v0

    goto :goto_e8

    :catch_120
    move-exception v0

    goto :goto_dd

    :catch_122
    move-exception v0

    goto :goto_d2

    :catch_124
    move-exception v0

    goto :goto_c7

    .line 1545
    :catch_126
    move-exception v0

    goto :goto_b3

    :catch_128
    move-exception v0

    goto/16 :goto_a8

    :catch_12b
    move-exception v0

    goto/16 :goto_9d

    .line 1887
    :catch_12e
    move-exception v0

    goto/16 :goto_89

    :catch_131
    move-exception v0

    goto/16 :goto_7e

    .line 4840
    :catch_134
    move-exception v0

    goto/16 :goto_6a

    :catch_137
    move-exception v0

    goto/16 :goto_5f

    :catch_13a
    move-exception v0

    goto/16 :goto_54

    :catch_13d
    move-exception v0

    goto/16 :goto_49

    .line 4879
    :catch_140
    move-exception v0

    goto/16 :goto_35

    :catch_143
    move-exception v0

    goto/16 :goto_2a

    :catch_146
    move-exception v0

    goto/16 :goto_1f

    :catch_149
    move-exception v0

    goto/16 :goto_14
.end method
