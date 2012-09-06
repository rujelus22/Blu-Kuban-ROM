.class Lcom/google/android/apps/plus/fragments/AvatarLoader$1;
.super Lcom/google/android/apps/plus/api/LargeAvatarOperation;
.source "AvatarLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/AvatarLoader;->esLoadInBackground()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/AvatarLoader;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/AvatarLoader;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 13
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader$1;->this$0:Lcom/google/android/apps/plus/fragments/AvatarLoader;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/LargeAvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    return-void
.end method


# virtual methods
.method protected saveLargeAvatar(Ljava/lang/String;[B)V
    .registers 5
    .parameter "gaiaId"
    .parameter "byteArray"

    .prologue
    .line 127
    if-nez p2, :cond_a

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader$1;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader$1;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertDefaultAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 132
    :goto_9
    return-void

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader$1;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AvatarLoader$1;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertLargeAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[B)V

    goto :goto_9
.end method
