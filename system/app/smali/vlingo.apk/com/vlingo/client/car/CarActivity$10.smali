.class synthetic Lcom/vlingo/client/car/CarActivity$10;
.super Ljava/lang/Object;
.source "CarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$vlingo$client$car$CarActivity$NewIntentAction:[I

.field static final synthetic $SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 952
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->values()[Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I

    :try_start_9
    sget-object v0, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I

    sget-object v1, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->SUCCESS:Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    invoke-virtual {v1}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_5f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I

    sget-object v1, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->FAILURE_TELEPHONY:Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    invoke-virtual {v1}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_5d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I

    sget-object v1, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->FAILURE_NETWORK:Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    invoke-virtual {v1}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5b

    .line 430
    :goto_2a
    invoke-static {}, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->values()[Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$car$CarActivity$NewIntentAction:[I

    :try_start_33
    sget-object v0, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$car$CarActivity$NewIntentAction:[I

    sget-object v1, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->StartListening:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_59

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$car$CarActivity$NewIntentAction:[I

    sget-object v1, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->StopListening:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_57

    :goto_49
    :try_start_49
    sget-object v0, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$car$CarActivity$NewIntentAction:[I

    sget-object v1, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->Cancel:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    goto :goto_54

    :catch_57
    move-exception v0

    goto :goto_49

    :catch_59
    move-exception v0

    goto :goto_3e

    .line 952
    :catch_5b
    move-exception v0

    goto :goto_2a

    :catch_5d
    move-exception v0

    goto :goto_1f

    :catch_5f
    move-exception v0

    goto :goto_14
.end method
