.class synthetic Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$youtube$core$transfer$Transfer$Status:[I

.field static final synthetic $SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 582
    invoke-static {}, Lcom/google/android/youtube/videos/DrmException$DrmError;->values()[Lcom/google/android/youtube/videos/DrmException$DrmError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    :try_start_9
    sget-object v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->LICENSE_PINNED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_79

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->USER_GEO_RESTRICTED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_77

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->KEY_VERIFICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_75

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->ROOTED_DEVICE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_73

    .line 477
    :goto_35
    invoke-static {}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->values()[Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$core$transfer$Transfer$Status:[I

    :try_start_3e
    sget-object v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$core$transfer$Transfer$Status:[I

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_71

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$core$transfer$Transfer$Status:[I

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_6f

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$core$transfer$Transfer$Status:[I

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6d

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$6;->$SwitchMap$com$google$android$youtube$core$transfer$Transfer$Status:[I

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

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

    .line 582
    :catch_73
    move-exception v0

    goto :goto_35

    :catch_75
    move-exception v0

    goto :goto_2a

    :catch_77
    move-exception v0

    goto :goto_1f

    :catch_79
    move-exception v0

    goto :goto_14
.end method
