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
.method protected handleResponse(J[B)V
    .registers 4
    .parameter "userId"
    .parameter "imageBytes"

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;->saveLargeAvatar(J[B)V

    .line 37
    return-void
.end method

.method protected abstract saveLargeAvatar(J[B)V
.end method
