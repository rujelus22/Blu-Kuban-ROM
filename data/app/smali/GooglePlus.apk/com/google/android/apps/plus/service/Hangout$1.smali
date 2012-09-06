.class synthetic Lcom/google/android/apps/plus/service/Hangout$1;
.super Ljava/lang/Object;
.source "Hangout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/Hangout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$apps$plus$service$Hangout$RoomType:[I

.field static final synthetic $SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

.field static final synthetic $SwitchMap$com$google$apps$tacotown$proto$A2a$HangoutData$HangoutType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 230
    invoke-static {}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->values()[Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->OS_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_c6

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->DEVICE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_c3

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->CHILD_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_c0

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ACCOUNT_NOT_CONFIGURED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_bd

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->TYPE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_bb

    .line 198
    :goto_40
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->values()[Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$apps$tacotown$proto$A2a$HangoutData$HangoutType:[I

    :try_start_49
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$apps$tacotown$proto$A2a$HangoutData$HangoutType:[I

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->CONSUMER:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_b9

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$apps$tacotown$proto$A2a$HangoutData$HangoutType:[I

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_b7

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$apps$tacotown$proto$A2a$HangoutData$HangoutType:[I

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->OPEN_BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_b5

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$apps$tacotown$proto$A2a$HangoutData$HangoutType:[I

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->BUSINESS:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_b3

    .line 183
    :goto_75
    invoke-static {}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->values()[Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$RoomType:[I

    :try_start_7e
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$RoomType:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->EXTERNAL:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_b1

    :goto_89
    :try_start_89
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$RoomType:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_af

    :goto_94
    :try_start_94
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$RoomType:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->WITH_EXTRAS:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_ad

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$RoomType:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_ab

    :goto_aa
    return-void

    :catch_ab
    move-exception v0

    goto :goto_aa

    :catch_ad
    move-exception v0

    goto :goto_9f

    :catch_af
    move-exception v0

    goto :goto_94

    :catch_b1
    move-exception v0

    goto :goto_89

    .line 198
    :catch_b3
    move-exception v0

    goto :goto_75

    :catch_b5
    move-exception v0

    goto :goto_6a

    :catch_b7
    move-exception v0

    goto :goto_5f

    :catch_b9
    move-exception v0

    goto :goto_54

    .line 230
    :catch_bb
    move-exception v0

    goto :goto_40

    :catch_bd
    move-exception v0

    goto/16 :goto_35

    :catch_c0
    move-exception v0

    goto/16 :goto_2a

    :catch_c3
    move-exception v0

    goto/16 :goto_1f

    :catch_c6
    move-exception v0

    goto/16 :goto_14
.end method
