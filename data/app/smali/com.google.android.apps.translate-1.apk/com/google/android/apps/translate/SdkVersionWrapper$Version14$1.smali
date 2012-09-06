.class Lcom/google/android/apps/translate/SdkVersionWrapper$Version14$1;
.super Ljava/lang/Object;
.source "SdkVersionWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/SdkVersionWrapper$Version14;->sendFeedback(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SdkVersionWrapper$Version14;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/SdkVersionWrapper$Version14;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/apps/translate/SdkVersionWrapper$Version14$1;->this$0:Lcom/google/android/apps/translate/SdkVersionWrapper$Version14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "name"
    .parameter "service"

    .prologue
    .line 283
    const/4 v1, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p2, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_b

    .line 287
    :goto_a
    return-void

    .line 284
    :catch_b
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SdkVersionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send feedback. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 288
    return-void
.end method
