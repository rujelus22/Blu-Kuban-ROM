.class final synthetic Lcom/google/android/youtube/app/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 367
    invoke-static {}, Lcom/google/android/youtube/app/remote/RemoteControl$State;->values()[Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/youtube/app/ui/bf;->b:[I

    :try_start_9
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->b:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->SLEEP:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_be

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->b:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_bb

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->b:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTING:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_b8

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->b:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_b5

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->b:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_b3

    .line 316
    :goto_40
    invoke-static {}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->values()[Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/youtube/app/ui/bf;->a:[I

    :try_start_49
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_b1

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PAUSED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_af

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_ad

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ADVERTISEMENT:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_ab

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_a9

    :goto_80
    :try_start_80
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->BUFFERING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_a7

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNSTARTED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_a5

    :goto_96
    :try_start_96
    sget-object v0, Lcom/google/android/youtube/app/ui/bf;->a:[I

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a2} :catch_a3

    :goto_a2
    return-void

    :catch_a3
    move-exception v0

    goto :goto_a2

    :catch_a5
    move-exception v0

    goto :goto_96

    :catch_a7
    move-exception v0

    goto :goto_8b

    :catch_a9
    move-exception v0

    goto :goto_80

    :catch_ab
    move-exception v0

    goto :goto_75

    :catch_ad
    move-exception v0

    goto :goto_6a

    :catch_af
    move-exception v0

    goto :goto_5f

    :catch_b1
    move-exception v0

    goto :goto_54

    :catch_b3
    move-exception v0

    goto :goto_40

    :catch_b5
    move-exception v0

    goto/16 :goto_35

    :catch_b8
    move-exception v0

    goto/16 :goto_2a

    :catch_bb
    move-exception v0

    goto/16 :goto_1f

    :catch_be
    move-exception v0

    goto/16 :goto_14
.end method
