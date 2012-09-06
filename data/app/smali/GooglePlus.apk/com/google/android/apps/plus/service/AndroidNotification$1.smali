.class synthetic Lcom/google/android/apps/plus/service/AndroidNotification$1;
.super Ljava/lang/Object;
.source "AndroidNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/AndroidNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$apps$people$notifications$proto$base$NotificationEnums$NotificationType:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 692
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->values()[Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_f9

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MY_COMMENT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_f6

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->OTHER_COMMENT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_f3

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_f0

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MAIL:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_ed

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MY_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_ea

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->SHARED_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_e7

    :goto_56
    :try_start_56
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->CAMERA_SYNC:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_e4

    :goto_62
    :try_start_62
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->PHOTO:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_e2

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->GAMES:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_e0

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->SYSTEM:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_de

    .line 411
    :goto_86
    invoke-static {}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$apps$people$notifications$proto$base$NotificationEnums$NotificationType:[I

    :try_start_8f
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$apps$people$notifications$proto$base$NotificationEnums$NotificationType:[I

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->HANGOUT_INVITE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_9a} :catch_dc

    :goto_9a
    :try_start_9a
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$apps$people$notifications$proto$base$NotificationEnums$NotificationType:[I

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->PHOTOS_CAMERASYNC_UPLOADED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a5} :catch_da

    :goto_a5
    :try_start_a5
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$apps$people$notifications$proto$base$NotificationEnums$NotificationType:[I

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->STREAM_POST_SHARED:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_b0} :catch_d8

    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$apps$people$notifications$proto$base$NotificationEnums$NotificationType:[I

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->STREAM_POST_AT_REPLY:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_bb} :catch_d6

    :goto_bb
    :try_start_bb
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$apps$people$notifications$proto$base$NotificationEnums$NotificationType:[I

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->STREAM_COMMENT_NEW:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c6} :catch_d4

    :goto_c6
    :try_start_c6
    sget-object v0, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$apps$people$notifications$proto$base$NotificationEnums$NotificationType:[I

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->STREAM_COMMENT_AT_REPLY:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d1} :catch_d2

    :goto_d1
    return-void

    :catch_d2
    move-exception v0

    goto :goto_d1

    :catch_d4
    move-exception v0

    goto :goto_c6

    :catch_d6
    move-exception v0

    goto :goto_bb

    :catch_d8
    move-exception v0

    goto :goto_b0

    :catch_da
    move-exception v0

    goto :goto_a5

    :catch_dc
    move-exception v0

    goto :goto_9a

    .line 692
    :catch_de
    move-exception v0

    goto :goto_86

    :catch_e0
    move-exception v0

    goto :goto_7a

    :catch_e2
    move-exception v0

    goto :goto_6e

    :catch_e4
    move-exception v0

    goto/16 :goto_62

    :catch_e7
    move-exception v0

    goto/16 :goto_56

    :catch_ea
    move-exception v0

    goto/16 :goto_4b

    :catch_ed
    move-exception v0

    goto/16 :goto_40

    :catch_f0
    move-exception v0

    goto/16 :goto_35

    :catch_f3
    move-exception v0

    goto/16 :goto_2a

    :catch_f6
    move-exception v0

    goto/16 :goto_1f

    :catch_f9
    move-exception v0

    goto/16 :goto_14
.end method
