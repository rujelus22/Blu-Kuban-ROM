.class final synthetic Lcom/google/android/youtube/app/remote/au;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 759
    invoke-static {}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->values()[Lcom/google/android/ytremote/intent/Intents$IntentAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/youtube/app/remote/au;->c:[I

    :try_start_9
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->c:[I

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CLOUD_SERVICE_IPV6_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_fd

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->c:[I

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CLOUD_SERVICE_NO_NETWORK:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_fa

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->c:[I

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->LOUNGE_SERVER_CONNECTION_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_f7

    .line 566
    :goto_2a
    invoke-static {}, Lcom/google/android/ytremote/backend/model/Method;->values()[Lcom/google/android/ytremote/backend/model/Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/youtube/app/remote/au;->b:[I

    :try_start_33
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->b:[I

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->LOUNGE_STATUS:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_f4

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->b:[I

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->SCREEN_CONNECTED:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_f1

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->b:[I

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->SCREEN_DISCONNECTED:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/Method;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_ee

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->b:[I

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->NOW_PLAYING:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/Method;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_eb

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->b:[I

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->STATE_CHANGED:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/Method;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_e9

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->b:[I

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->PLAYLIST_MODIFIED:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/Method;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_e7

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->b:[I

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->ERROR:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/Method;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_e5

    .line 427
    :goto_80
    invoke-static {}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->values()[Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/youtube/app/remote/au;->a:[I

    :try_start_89
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_e3

    :goto_94
    :try_start_94
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PAUSED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_e1

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ADVERTISEMENT:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_df

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->BUFFERING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_dd

    :goto_b5
    :try_start_b5
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_c0} :catch_db

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cb} :catch_d9

    :goto_cb
    :try_start_cb
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNSTARTED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d6} :catch_d7

    :goto_d6
    return-void

    :catch_d7
    move-exception v0

    goto :goto_d6

    :catch_d9
    move-exception v0

    goto :goto_cb

    :catch_db
    move-exception v0

    goto :goto_c0

    :catch_dd
    move-exception v0

    goto :goto_b5

    :catch_df
    move-exception v0

    goto :goto_aa

    :catch_e1
    move-exception v0

    goto :goto_9f

    :catch_e3
    move-exception v0

    goto :goto_94

    :catch_e5
    move-exception v0

    goto :goto_80

    :catch_e7
    move-exception v0

    goto :goto_75

    :catch_e9
    move-exception v0

    goto :goto_6a

    :catch_eb
    move-exception v0

    goto/16 :goto_5f

    :catch_ee
    move-exception v0

    goto/16 :goto_54

    :catch_f1
    move-exception v0

    goto/16 :goto_49

    :catch_f4
    move-exception v0

    goto/16 :goto_3e

    :catch_f7
    move-exception v0

    goto/16 :goto_2a

    :catch_fa
    move-exception v0

    goto/16 :goto_1f

    :catch_fd
    move-exception v0

    goto/16 :goto_14
.end method
