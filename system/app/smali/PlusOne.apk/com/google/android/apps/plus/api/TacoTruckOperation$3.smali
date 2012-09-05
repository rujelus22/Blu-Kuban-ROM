.class synthetic Lcom/google/android/apps/plus/api/TacoTruckOperation$3;
.super Ljava/lang/Object;
.source "TacoTruckOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/api/TacoTruckOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Network$PostRequest$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1876
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->values()[Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_243

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_240

    .line 1455
    :goto_1f
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->values()[Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    :try_start_28
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_23d

    :goto_33
    :try_start_33
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->REPORT_ABUSE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_23a

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MUTE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_237

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_234

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MODERATE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_231

    .line 1413
    :goto_5f
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->values()[Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PostRequest$Type:[I

    :try_start_68
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PostRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_22e

    .line 1140
    :goto_73
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->values()[Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    :try_start_7c
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_87} :catch_22b

    :goto_87
    :try_start_87
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_92} :catch_228

    :goto_92
    :try_start_92
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_AUDIENCE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9d} :catch_225

    :goto_9d
    :try_start_9d
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a8} :catch_222

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b3} :catch_21f

    :goto_b3
    :try_start_b3
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTOS_BY_ACTIVITY_ID:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_be} :catch_21c

    :goto_be
    :try_start_be
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c9} :catch_219

    :goto_c9
    :try_start_c9
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d5} :catch_216

    :goto_d5
    :try_start_d5
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PLUS_ONE_PEOPLE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_e1} :catch_213

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ed} :catch_210

    :goto_ed
    :try_start_ed
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_NOTIFICATIONS_LAST_READ_TIME:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f9} :catch_20d

    :goto_f9
    :try_start_f9
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_DEFAULT_NOTIFICATION_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_105
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_105} :catch_20a

    :goto_105
    :try_start_105
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PEOPLE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_111} :catch_207

    :goto_111
    :try_start_111
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_11d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_111 .. :try_end_11d} :catch_204

    :goto_11d
    :try_start_11d
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->NOTIFICATION_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d .. :try_end_129} :catch_201

    :goto_129
    :try_start_129
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SNAP_TO_PLACE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_135} :catch_1fe

    :goto_135
    :try_start_135
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PLACE_SEARCH:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_141
    .catch Ljava/lang/NoSuchFieldError; {:try_start_135 .. :try_end_141} :catch_1fb

    :goto_141
    :try_start_141
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ALBUM_LIST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_14d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_141 .. :try_end_14d} :catch_1f8

    :goto_14d
    :try_start_14d
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ALBUM:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14d .. :try_end_159} :catch_1f5

    :goto_159
    :try_start_159
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_STREAM_PHOTOS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_159 .. :try_end_165} :catch_1f2

    :goto_165
    :try_start_165
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTOS_OF_USER:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_171
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_171} :catch_1f0

    :goto_171
    :try_start_171
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO_CONSUMPTION_STREAM:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_17d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_171 .. :try_end_17d} :catch_1ee

    :goto_17d
    :try_start_17d
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->NAME_TAG_APPROVAL:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_189
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17d .. :try_end_189} :catch_1ec

    :goto_189
    :try_start_189
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTOS_HOME:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_195
    .catch Ljava/lang/NoSuchFieldError; {:try_start_189 .. :try_end_195} :catch_1ea

    :goto_195
    :try_start_195
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTO_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_195 .. :try_end_1a1} :catch_1e8

    :goto_1a1
    :try_start_1a1
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_PROFILE_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a1 .. :try_end_1ad} :catch_1e6

    :goto_1ad
    :try_start_1ad
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ad .. :try_end_1b9} :catch_1e4

    :goto_1b9
    :try_start_1b9
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->UPLOAD_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b9 .. :try_end_1c5} :catch_1e2

    :goto_1c5
    :try_start_1c5
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ANALYTICS_LOG:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c5 .. :try_end_1d1} :catch_1e0

    :goto_1d1
    :try_start_1d1
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SEARCH:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d1 .. :try_end_1dd} :catch_1de

    :goto_1dd
    return-void

    :catch_1de
    move-exception v0

    goto :goto_1dd

    :catch_1e0
    move-exception v0

    goto :goto_1d1

    :catch_1e2
    move-exception v0

    goto :goto_1c5

    :catch_1e4
    move-exception v0

    goto :goto_1b9

    :catch_1e6
    move-exception v0

    goto :goto_1ad

    :catch_1e8
    move-exception v0

    goto :goto_1a1

    :catch_1ea
    move-exception v0

    goto :goto_195

    :catch_1ec
    move-exception v0

    goto :goto_189

    :catch_1ee
    move-exception v0

    goto :goto_17d

    :catch_1f0
    move-exception v0

    goto :goto_171

    :catch_1f2
    move-exception v0

    goto/16 :goto_165

    :catch_1f5
    move-exception v0

    goto/16 :goto_159

    :catch_1f8
    move-exception v0

    goto/16 :goto_14d

    :catch_1fb
    move-exception v0

    goto/16 :goto_141

    :catch_1fe
    move-exception v0

    goto/16 :goto_135

    :catch_201
    move-exception v0

    goto/16 :goto_129

    :catch_204
    move-exception v0

    goto/16 :goto_11d

    :catch_207
    move-exception v0

    goto/16 :goto_111

    :catch_20a
    move-exception v0

    goto/16 :goto_105

    :catch_20d
    move-exception v0

    goto/16 :goto_f9

    :catch_210
    move-exception v0

    goto/16 :goto_ed

    :catch_213
    move-exception v0

    goto/16 :goto_e1

    :catch_216
    move-exception v0

    goto/16 :goto_d5

    :catch_219
    move-exception v0

    goto/16 :goto_c9

    :catch_21c
    move-exception v0

    goto/16 :goto_be

    :catch_21f
    move-exception v0

    goto/16 :goto_b3

    :catch_222
    move-exception v0

    goto/16 :goto_a8

    :catch_225
    move-exception v0

    goto/16 :goto_9d

    :catch_228
    move-exception v0

    goto/16 :goto_92

    :catch_22b
    move-exception v0

    goto/16 :goto_87

    .line 1413
    :catch_22e
    move-exception v0

    goto/16 :goto_73

    .line 1455
    :catch_231
    move-exception v0

    goto/16 :goto_5f

    :catch_234
    move-exception v0

    goto/16 :goto_54

    :catch_237
    move-exception v0

    goto/16 :goto_49

    :catch_23a
    move-exception v0

    goto/16 :goto_3e

    :catch_23d
    move-exception v0

    goto/16 :goto_33

    .line 1876
    :catch_240
    move-exception v0

    goto/16 :goto_1f

    :catch_243
    move-exception v0

    goto/16 :goto_14
.end method
