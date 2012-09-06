.class synthetic Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

.field static final synthetic $SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 422
    invoke-static {}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->values()[Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    :try_start_9
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->SUCCESS:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->CANNOT_REFUND:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->BAD_REQUEST:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->NETWORK_ERROR:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_66

    .line 138
    :goto_35
    invoke-static {}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->values()[Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    :try_start_3e
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    goto :goto_5f

    :catch_62
    move-exception v0

    goto :goto_54

    :catch_64
    move-exception v0

    goto :goto_49

    .line 422
    :catch_66
    move-exception v0

    goto :goto_35

    :catch_68
    move-exception v0

    goto :goto_2a

    :catch_6a
    move-exception v0

    goto :goto_1f

    :catch_6c
    move-exception v0

    goto :goto_14
.end method
