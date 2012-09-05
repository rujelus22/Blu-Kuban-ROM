.class synthetic Lcom/google/android/finsky/download/DownloadQueueImpl$11;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

.field static final synthetic $SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 520
    invoke-static {}, Lcom/google/android/finsky/download/Download$DownloadState;->values()[Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    :try_start_9
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_cc

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->CANCELLED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_c9

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_c6

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->SUCCESS:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_c3

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_c0

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_be

    .line 267
    :goto_4b
    invoke-static {}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->values()[Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    :try_start_54
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->UPDATE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_bc

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ADD:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_ba

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->NOTIFICATION_CLICKED:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_b8

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->COMPLETE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_b6

    :goto_80
    :try_start_80
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->PROGRESS:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_b4

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->CANCEL:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_b2

    :goto_96
    :try_start_96
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ERROR:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a1} :catch_b0

    :goto_a1
    :try_start_a1
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->START:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ad} :catch_ae

    :goto_ad
    return-void

    :catch_ae
    move-exception v0

    goto :goto_ad

    :catch_b0
    move-exception v0

    goto :goto_a1

    :catch_b2
    move-exception v0

    goto :goto_96

    :catch_b4
    move-exception v0

    goto :goto_8b

    :catch_b6
    move-exception v0

    goto :goto_80

    :catch_b8
    move-exception v0

    goto :goto_75

    :catch_ba
    move-exception v0

    goto :goto_6a

    :catch_bc
    move-exception v0

    goto :goto_5f

    .line 520
    :catch_be
    move-exception v0

    goto :goto_4b

    :catch_c0
    move-exception v0

    goto/16 :goto_40

    :catch_c3
    move-exception v0

    goto/16 :goto_35

    :catch_c6
    move-exception v0

    goto/16 :goto_2a

    :catch_c9
    move-exception v0

    goto/16 :goto_1f

    :catch_cc
    move-exception v0

    goto/16 :goto_14
.end method
