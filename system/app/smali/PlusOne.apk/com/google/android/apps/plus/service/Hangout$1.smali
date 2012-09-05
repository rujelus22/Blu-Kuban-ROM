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
.field static final synthetic $SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Data$HangoutData$HangoutType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 337
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->values()[Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$HangoutData$HangoutType:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$HangoutData$HangoutType:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->CONSUMER:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_79

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$HangoutData$HangoutType:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->BUSINESS:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_77

    .line 187
    :goto_1f
    invoke-static {}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->values()[Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    :try_start_28
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->NO_FRONT_FACING_CAMERA:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_75

    :goto_33
    :try_start_33
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->OS_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_73

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->DEVICE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_71

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->CHILD_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_6f

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ACCOUNT_NOT_CONFIGURED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6d

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$1;->$SwitchMap$com$google$android$apps$plus$service$Hangout$SupportStatus:[I

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->TYPE_NOT_SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_6b

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    goto :goto_6a

    :catch_6d
    move-exception v0

    goto :goto_5f

    :catch_6f
    move-exception v0

    goto :goto_54

    :catch_71
    move-exception v0

    goto :goto_49

    :catch_73
    move-exception v0

    goto :goto_3e

    :catch_75
    move-exception v0

    goto :goto_33

    .line 337
    :catch_77
    move-exception v0

    goto :goto_1f

    :catch_79
    move-exception v0

    goto :goto_14
.end method
