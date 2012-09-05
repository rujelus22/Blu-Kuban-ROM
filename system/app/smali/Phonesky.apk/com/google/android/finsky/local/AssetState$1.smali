.class final Lcom/google/android/finsky/local/AssetState$1;
.super Ljava/util/HashMap;
.source "AssetState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/AssetState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/google/android/finsky/local/AssetState;",
        "[",
        "Lcom/google/android/finsky/local/AssetState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 66
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_FAILED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_DECLINED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    new-array v1, v5, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    new-array v1, v6, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

    new-array v1, v5, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_FAILED:Lcom/google/android/finsky/local/AssetState;

    new-array v1, v5, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    new-array v1, v6, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->INSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

    new-array v1, v6, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->UNINSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->UNINSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

    new-array v1, v5, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_DECLINED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_FAILED:Lcom/google/android/finsky/local/AssetState;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_DECLINED:Lcom/google/android/finsky/local/AssetState;

    new-array v1, v5, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/google/android/finsky/local/AssetState;

    new-array v1, v5, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/local/AssetState;

    new-array v1, v6, [Lcom/google/android/finsky/local/AssetState;

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/AssetState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method
