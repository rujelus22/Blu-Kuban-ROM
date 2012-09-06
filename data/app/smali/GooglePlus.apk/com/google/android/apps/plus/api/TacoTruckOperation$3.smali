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
.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Data$StreamViewType$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Network$PostRequest$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 2559
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->values()[Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$StreamViewType$Type:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$StreamViewType$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2b1

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$StreamViewType$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->ALL_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2ae

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$StreamViewType$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->NEARBY:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2ab

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$StreamViewType$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_2a8

    .line 2068
    :goto_35
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->values()[Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    :try_start_3e
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_2a5

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_2a2

    .line 1621
    :goto_54
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->values()[Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    :try_start_5d
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_29f

    :goto_68
    :try_start_68
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->REPORT_ABUSE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_29c

    :goto_73
    :try_start_73
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MUTE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_299

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_296

    :goto_89
    :try_start_89
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MODERATE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_293

    .line 1578
    :goto_94
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->values()[Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PostRequest$Type:[I

    :try_start_9d
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PostRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a8} :catch_290

    .line 1274
    :goto_a8
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->values()[Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    :try_start_b1
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bc} :catch_28d

    :goto_bc
    :try_start_bc
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c7} :catch_28a

    :goto_c7
    :try_start_c7
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_AUDIENCE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d2} :catch_287

    :goto_d2
    :try_start_d2
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_EDITABLE_CONTENT:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_dd} :catch_284

    :goto_dd
    :try_start_dd
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e8} :catch_281

    :goto_e8
    :try_start_e8
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f3} :catch_27e

    :goto_f3
    :try_start_f3
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTOS_BY_ACTIVITY_ID:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_fe} :catch_27b

    :goto_fe
    :try_start_fe
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_278

    :goto_10a
    :try_start_10a
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_275

    :goto_116
    :try_start_116
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PLUS_ONE_PEOPLE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_272

    :goto_122
    :try_start_122
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_26f

    :goto_12e
    :try_start_12e
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_NOTIFICATIONS_LAST_READ_TIME:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_26c

    :goto_13a
    :try_start_13a
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->MARK_ACTIVITY_AS_READ:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_146} :catch_269

    :goto_146
    :try_start_146
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_DEFAULT_NOTIFICATION_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_152
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_152} :catch_266

    :goto_152
    :try_start_152
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PEOPLE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_263

    :goto_15e
    :try_start_15e
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_260

    :goto_16a
    :try_start_16a
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->NOTIFICATION_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_176
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16a .. :try_end_176} :catch_25d

    :goto_176
    :try_start_176
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SNAP_TO_PLACE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_182} :catch_25a

    :goto_182
    :try_start_182
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PLACE_SEARCH:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_18e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18e} :catch_257

    :goto_18e
    :try_start_18e
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ALBUM_LIST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_19a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18e .. :try_end_19a} :catch_254

    :goto_19a
    :try_start_19a
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ALBUM:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19a .. :try_end_1a6} :catch_251

    :goto_1a6
    :try_start_1a6
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_STREAM_PHOTOS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a6 .. :try_end_1b2} :catch_24e

    :goto_1b2
    :try_start_1b2
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTOS_OF_USER:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1be} :catch_24b

    :goto_1be
    :try_start_1be
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO_CONSUMPTION_STREAM:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1ca} :catch_249

    :goto_1ca
    :try_start_1ca
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->NAME_TAG_APPROVAL:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ca .. :try_end_1d6} :catch_247

    :goto_1d6
    :try_start_1d6
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTOS_HOME:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d6 .. :try_end_1e2} :catch_245

    :goto_1e2
    :try_start_1e2
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTO_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e2 .. :try_end_1ee} :catch_243

    :goto_1ee
    :try_start_1ee
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_PROFILE_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ee .. :try_end_1fa} :catch_241

    :goto_1fa
    :try_start_1fa
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_206
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_206} :catch_23f

    :goto_206
    :try_start_206
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_212
    .catch Ljava/lang/NoSuchFieldError; {:try_start_206 .. :try_end_212} :catch_23d

    :goto_212
    :try_start_212
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->UPLOAD_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_21e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_212 .. :try_end_21e} :catch_23b

    :goto_21e
    :try_start_21e
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ANALYTICS_LOG:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_22a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21e .. :try_end_22a} :catch_239

    :goto_22a
    :try_start_22a
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SEARCH:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_236
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22a .. :try_end_236} :catch_237

    :goto_236
    return-void

    :catch_237
    move-exception v0

    goto :goto_236

    :catch_239
    move-exception v0

    goto :goto_22a

    :catch_23b
    move-exception v0

    goto :goto_21e

    :catch_23d
    move-exception v0

    goto :goto_212

    :catch_23f
    move-exception v0

    goto :goto_206

    :catch_241
    move-exception v0

    goto :goto_1fa

    :catch_243
    move-exception v0

    goto :goto_1ee

    :catch_245
    move-exception v0

    goto :goto_1e2

    :catch_247
    move-exception v0

    goto :goto_1d6

    :catch_249
    move-exception v0

    goto :goto_1ca

    :catch_24b
    move-exception v0

    goto/16 :goto_1be

    :catch_24e
    move-exception v0

    goto/16 :goto_1b2

    :catch_251
    move-exception v0

    goto/16 :goto_1a6

    :catch_254
    move-exception v0

    goto/16 :goto_19a

    :catch_257
    move-exception v0

    goto/16 :goto_18e

    :catch_25a
    move-exception v0

    goto/16 :goto_182

    :catch_25d
    move-exception v0

    goto/16 :goto_176

    :catch_260
    move-exception v0

    goto/16 :goto_16a

    :catch_263
    move-exception v0

    goto/16 :goto_15e

    :catch_266
    move-exception v0

    goto/16 :goto_152

    :catch_269
    move-exception v0

    goto/16 :goto_146

    :catch_26c
    move-exception v0

    goto/16 :goto_13a

    :catch_26f
    move-exception v0

    goto/16 :goto_12e

    :catch_272
    move-exception v0

    goto/16 :goto_122

    :catch_275
    move-exception v0

    goto/16 :goto_116

    :catch_278
    move-exception v0

    goto/16 :goto_10a

    :catch_27b
    move-exception v0

    goto/16 :goto_fe

    :catch_27e
    move-exception v0

    goto/16 :goto_f3

    :catch_281
    move-exception v0

    goto/16 :goto_e8

    :catch_284
    move-exception v0

    goto/16 :goto_dd

    :catch_287
    move-exception v0

    goto/16 :goto_d2

    :catch_28a
    move-exception v0

    goto/16 :goto_c7

    :catch_28d
    move-exception v0

    goto/16 :goto_bc

    .line 1578
    :catch_290
    move-exception v0

    goto/16 :goto_a8

    .line 1621
    :catch_293
    move-exception v0

    goto/16 :goto_94

    :catch_296
    move-exception v0

    goto/16 :goto_89

    :catch_299
    move-exception v0

    goto/16 :goto_7e

    :catch_29c
    move-exception v0

    goto/16 :goto_73

    :catch_29f
    move-exception v0

    goto/16 :goto_68

    .line 2068
    :catch_2a2
    move-exception v0

    goto/16 :goto_54

    :catch_2a5
    move-exception v0

    goto/16 :goto_49

    .line 2559
    :catch_2a8
    move-exception v0

    goto/16 :goto_35

    :catch_2ab
    move-exception v0

    goto/16 :goto_2a

    :catch_2ae
    move-exception v0

    goto/16 :goto_1f

    :catch_2b1
    move-exception v0

    goto/16 :goto_14
.end method
