.class public abstract Lcom/google/android/apps/plus/api/LargeAvatarOperation;
.super Lcom/google/android/apps/plus/api/AvatarOperation;
.source "LargeAvatarOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "syncState"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/plus/api/AvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected handleResponse(Ljava/lang/String;[B)V
    .registers 3
    .parameter "gaiaId"
    .parameter "imageBytes"

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->saveLargeAvatar(Ljava/lang/String;[B)V

    .line 37
    return-void
.end method

.method protected abstract saveLargeAvatar(Ljava/lang/String;[B)V
.end method
