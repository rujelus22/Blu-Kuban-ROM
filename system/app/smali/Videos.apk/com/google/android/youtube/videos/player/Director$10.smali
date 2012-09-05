.class synthetic Lcom/google/android/youtube/videos/player/Director$10;
.super Ljava/lang/Object;
.source "Director.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/player/Director;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$youtube$core$model$Purchase$Status:[I

.field static final synthetic $SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

.field static final synthetic $SwitchMap$com$google$android$youtube$videos$player$Director$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1083
    invoke-static {}, Lcom/google/android/youtube/videos/DrmException$DrmError;->values()[Lcom/google/android/youtube/videos/DrmException$DrmError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    :try_start_9
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->LICENSE_PINNED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_d3

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->USER_GEO_RESTRICTED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_d0

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->KEY_VERIFICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_cd

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->ROOTED_DEVICE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_ca

    .line 615
    :goto_35
    invoke-static {}, Lcom/google/android/youtube/videos/player/Director$State;->values()[Lcom/google/android/youtube/videos/player/Director$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$player$Director$State:[I

    :try_start_3e
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$player$Director$State:[I

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_LOADED:Lcom/google/android/youtube/videos/player/Director$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/Director$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_c8

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$player$Director$State:[I

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ENDED:Lcom/google/android/youtube/videos/player/Director$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/Director$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_c6

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$player$Director$State:[I

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_OK:Lcom/google/android/youtube/videos/player/Director$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/Director$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_c4

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$player$Director$State:[I

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZING:Lcom/google/android/youtube/videos/player/Director$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/Director$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_c2

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$player$Director$State:[I

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/Director$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_c0

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$player$Director$State:[I

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/Director$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_be

    .line 353
    :goto_80
    invoke-static {}, Lcom/google/android/youtube/core/model/Purchase$Status;->values()[Lcom/google/android/youtube/core/model/Purchase$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$core$model$Purchase$Status:[I

    :try_start_89
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$core$model$Purchase$Status:[I

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->PENDING:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_bc

    :goto_94
    :try_start_94
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$core$model$Purchase$Status:[I

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->OTHER:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_ba

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$core$model$Purchase$Status:[I

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->REJECTED:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_b8

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$core$model$Purchase$Status:[I

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->EXPIRED:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_b6

    :goto_b5
    return-void

    :catch_b6
    move-exception v0

    goto :goto_b5

    :catch_b8
    move-exception v0

    goto :goto_aa

    :catch_ba
    move-exception v0

    goto :goto_9f

    :catch_bc
    move-exception v0

    goto :goto_94

    .line 615
    :catch_be
    move-exception v0

    goto :goto_80

    :catch_c0
    move-exception v0

    goto :goto_75

    :catch_c2
    move-exception v0

    goto :goto_6a

    :catch_c4
    move-exception v0

    goto :goto_5f

    :catch_c6
    move-exception v0

    goto :goto_54

    :catch_c8
    move-exception v0

    goto :goto_49

    .line 1083
    :catch_ca
    move-exception v0

    goto/16 :goto_35

    :catch_cd
    move-exception v0

    goto/16 :goto_2a

    :catch_d0
    move-exception v0

    goto/16 :goto_1f

    :catch_d3
    move-exception v0

    goto/16 :goto_14
.end method
